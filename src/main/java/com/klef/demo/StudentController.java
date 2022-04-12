package com.klef.demo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController 
{
	@Autowired
	StudentService stdservice;
	
	@Autowired
	StudentRepository stdrepo;
	
	@Autowired
	StudentRepository stdrepository;
	
	@Autowired
	AddTutorialRepository tutrepo;
	
	@Autowired
	RecruitmentRepository recrepo;

	@Autowired
	JobsRepository jrepo;
	
	@GetMapping("/home")
	public ModelAndView home()
	{ 
		List<AddTutorial> tut = (List<AddTutorial>) tutrepo.findAll();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("tut",tut);
		return mv;
	}
	
	@GetMapping("/addstudent")
	public ModelAndView addstudent()
	{
		return new ModelAndView("addstudent","std",new Student());
	}
	
	@GetMapping("/addadmin")
	public ModelAndView addadmin()
	{
		return new ModelAndView("addadmin","admin",new Admin());
	}
	
	
	@PostMapping("/submitstdlogindata")
	public ModelAndView submitstdlogindata(@ModelAttribute("std") Student std)
	{
		try {
		Student std1 = stdservice.findbyStudentEmail(std);
		if(std1.getEmail().equals(std.getEmail())) {
		    ModelAndView mv = new ModelAndView();
			mv.setViewName("loginsuccess");
			mv.addObject("email",std.getEmail());
			return mv;
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addstudent");
		return mv;
		}
		catch(Exception e)
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("addstudent");
			return mv;
		}
	}
	
	@PostMapping("/submitstddata")
	public ModelAndView submitstddata(@ModelAttribute("std") Student std)
	{
		int Random = (int)(Math.random()*100);
		std.setId(Random);
		stdservice.addstdrecord(std);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addsuccess");
		mv.addObject("name",std.getName());
		return mv;
	}
	
	@GetMapping("/loginsuccess")
	public ModelAndView loginsuccess()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginsuccess");
		return mv;
	}
	
	@GetMapping("/loginsuccessemp")
	public ModelAndView loginsuccesssemp()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginsuccessemp");
		return mv;
	}
	
	@GetMapping("/loginsuccessadmin")
	public ModelAndView loginsuccessadmin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginsuccessadmin");
		return mv;
	}
	/*
	 * //view all
	 * 
	 * @GetMapping("/viewStudents") public List<Student> getallstdrecord() { return
	 * stdservice.getallstdrecords(); }
	 */
	
	//start
	
	/*@GetMapping("/viewemployees")
	  public ModelAndView viewemployees()
	  {
		   List<Employee> employees = empservice.getallemployeerecords();
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("viewemployees");
		   mv.addObject("empdata",employees);
		   
		   return mv;
	  }*/
	
	@GetMapping("/viewStd")
	public ModelAndView viewstd(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session = req.getSession();
		//company id
		String username = (String) session.getAttribute("username");
		
		List<Jobs> job = (List<Jobs>) jrepo.findByCompanyId(username);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewStd");
		mv.addObject("job",job);
		
		return mv;
	}
	
	
	
	
	@GetMapping("/viewStudents")
	public ModelAndView viewstudents(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		List<Recruitment> rec = (List<Recruitment>) recrepo.findByCompanyId(username);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewStudents");
		mv.addObject("rec",rec);
		
		return mv;
	}
	
	@GetMapping("/viewstatus")
	public ModelAndView viewstatus(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("email");
		Student std = (Student)stdrepo.findByStudentEmailOnly(email);
		List<Recruitment> rec = (List<Recruitment>) recrepo.findAllByJId(std.getId());
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewstatus");
		mv.addObject("rec",rec);
		return mv;
	}
	
	
	@GetMapping("/updateresume")
	  public ModelAndView updateemployee()
	  {
	    
	    ModelAndView mv = new ModelAndView("resume_update","std",new Student());
	    return mv;
	    
	  }
	
	@PostMapping("/update_resume_data")
	  public String update_resume_data(
			/*
			 * @ModelAttribute("std") Student std,@RequestParam("file") MultipartFile file
			 */
			  @ModelAttribute("std") Student std,
			    BindingResult result,
			    Model model,
			    @RequestParam("file") MultipartFile file
			  
			  
			  ) throws IOException
	  {
		stdservice.ApplytheJob(std, file);
	    return "redirect:/viewStudents";
	  }
	
	@GetMapping("/updatestudent")
	  public ModelAndView updatestudent()
	  {
	    
	    ModelAndView mv = new ModelAndView("resume_update","std",new Student());
	    return mv;
	    
	  }
	
	@PostMapping("/updatestddata")
	  public String updateempdata(@ModelAttribute("std") Student std)
	  {
		//System.out.println(emp.getUsername()+" , "+emp.getCompany_name()+" , " );
		Student emp1 = stdrepository.findByStudentEmailOnly(std.getEmail());
		int id=emp1.getId();
		String password=emp1.getPassword();
		/*
		 * String location=emp1.getLocation();
		 */		
		std.setId(id);
		std.setPassword(password);
		/*
		 * emp.setLocation(location);
		 */		System.out.println(std);
      stdrepository.save(std); //Updates user in database

	    //empservice.addemployeerecord(emp);
	    return "redirect:/viewStudents";
	  }
	
	@GetMapping("/viewjobs")
	public ModelAndView viewjobs()
	{
		List<Jobs> rec = (List<Jobs>) jrepo.findAll();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewjobs");
		mv.addObject("rec",rec);
		return mv;
	}
	
	@GetMapping("/viewjobs2")
	public ModelAndView viewjobs2(HttpServletRequest req)
	{
		String name = (String)req.getParameter("search");
		System.out.println(name);
		if(name=="") {
			List<Jobs> rec = (List<Jobs>) jrepo.findAll();
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewjobs");
			mv.addObject("rec",rec);
			return mv;
		}
		else {
		List<Jobs> rec = (List<Jobs>) jrepo.findByCid(name);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewjobs");
		mv.addObject("rec",rec);
		return mv;
		}
	}
	
	@GetMapping("/userprofile")
	public ModelAndView userprofile(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("email");
		Student std = (Student)stdrepo.findByStudentEmailOnly(email);
		ModelAndView mv = new ModelAndView("userprofile","std1",new Student());
		mv.addObject("std",std);
		System.out.println(email);
		//System.out.println(std.getId()+" "+std.getEmail());
		return mv;
	}
	
	@PostMapping("/updateuserprofile")
	public ModelAndView updateuserprofile(@ModelAttribute("std1") Student std1)
	{
		
		System.out.println("Here,"+std1.getEmail());
		Student std = (Student)stdrepo.findByStudentEmailOnly(std1.getEmail());
		std1.setId(std.getId());
		std1.setGender(std.getGender());
		System.out.println(std.getId());
		System.out.println(std1.getId());
		stdrepo.save(std1);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginsuccess");
		return mv;
	}
	@GetMapping("/viewuserprofile/{id}")
	public ModelAndView acceptreq(@PathVariable("id") int id)
	{
		Student std = stdrepo.findByStudentIdOnly(id);
		ModelAndView mv = new ModelAndView("viewuserprofile","std",new Student());
		mv.addObject("std",std);
		return mv;
	}
	@GetMapping("/viewfromadmin")
	public ModelAndView viewfromadmin(HttpServletRequest req,HttpServletResponse res)
	{
		List<Recruitment> rec = (List<Recruitment>) recrepo.findAll();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewfromadmin");
		mv.addObject("rec",rec);
		
		return mv;
	}

}
	

