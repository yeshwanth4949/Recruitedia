package com.klef.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController 
{
	@Autowired
	EmployeeService empservice;
	
	@Autowired
	EmployeeRepository emprepository;
	
	@Autowired
	AddTutorialRepository tutrepo;
	
	@Autowired
	RecruitmentRepository recrepo;
	
	@Autowired
	StudentService stdservice;
	
	@Autowired
	JobsRepository jrepo;
	
	@Autowired
	StudentRepository stdrepo;
	
	/*
	 * @GetMapping("/viewJobSeeker") public ModelAndView home() { ModelAndView mv =
	 * new ModelAndView(); mv.setViewName("viewJobSeeker"); return mv; }
	 */
	
	@GetMapping("/addrecruiter")
	public ModelAndView addemployee()
	{
		return new ModelAndView("addrecruiter","emp",new Employee());
	}
	
	@PostMapping("/submitemplogindata")
	public ModelAndView submitstdlogindata(@ModelAttribute("emp") Employee emp)
	{
		try {
		Employee emp1 = empservice.loginvalid(emp);
		System.out.println(emp1.getUsername());
		System.out.println(emp.getUsername());
		if(emp1.getUsername().equals(emp.getUsername())) {
		ModelAndView mv = new ModelAndView();
		
			mv.setViewName("recruiter_home");
			mv.addObject("username",emp.getUsername());
		
		return mv;
		}
        ModelAndView mv = new ModelAndView();
		mv.setViewName("addrecruiter");
		return mv;
		}
		catch(Exception e) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("addrecruiter");
		return mv;
		}
	}
	
	@PostMapping("/submitadminlogindata")
	public ModelAndView submitadminlogindata(@ModelAttribute("admin") Admin admin)
	{
		ModelAndView mv = new ModelAndView();
		String username=admin.getUsername();
		String pwd=admin.getPassword();
		System.out.println("********");
		System.out.println(username+" "+pwd);
		if(username.equals("admin123") && pwd.equals("admin"))
		{
			mv.setViewName("loginsuccessadmin");
			mv.addObject("username",username);
			return mv;
		}
			mv.setViewName("addadmin");
			return mv;
		
	}
	
	@PostMapping("/submitempdata")
	public ModelAndView submitempdata(@ModelAttribute("emp") Employee emp)
	{
		int Random = (int)(Math.random()*100);
		emp.setId(Random);
		emp.setStatus("Processing");
		empservice.addemployeerecord(emp);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addsuccess");
		mv.addObject("name",emp.getCompany_name());
		return mv;
	}
	
	
	@GetMapping("/employee/getall")
	public List<Employee> getallemprecord()
	{
		return empservice.getallemployeerecords();
	}
	
	//start
	@GetMapping("/recruiter_home")
	public ModelAndView recruiter_home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("recruiter_home");
		return mv;
	}
	
	@GetMapping("/updateresult")
	public ModelAndView updateresult()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateresult");
		return mv;
	}
	
	@GetMapping("/postjob")
	public ModelAndView postjob()
	{
		return new ModelAndView("postjob","rec",new Recruitment());
	}
	
	
	@GetMapping("/cards")
	public ModelAndView cards()
	{
		List<Employee> employee = empservice.getallemployeerecords();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("cards");
		mv.addObject("empdata",employee);
		
		return mv;
	}
	
	@GetMapping("/updateemployee")
	  public ModelAndView updateemployee()
	  {
	    
	    ModelAndView mv = new ModelAndView("updateEmployeeDetails","emp",new Employee());
	    return mv;
	    
	  }
	
	@GetMapping("/tutorial")
	  public ModelAndView tutorial()
	  {
	    
	    ModelAndView mv = new ModelAndView("tutorial","tut",new AddTutorial());
	    return mv;
	    
	  }
	
	@PostMapping("/updateempdata")
	  public String updateempdata(@ModelAttribute("emp") Employee emp)
	  {
		//System.out.println(emp.getUsername()+" , "+emp.getCompany_name()+" , " );
		Employee emp1 = emprepository.findByUsername(emp.getUsername());
		int id=emp1.getId();
		String password=emp1.getPassword();
		String location=emp1.getLocation();
		
		emp.setId(id);
		emp.setPassword(password);
		emp.setLocation(location);
		emp.setStatus(emp1.getStatus());
		System.out.println(emp);
        //model.addAttribute("emp", emp);
        emprepository.save(emp); //Updates user in database
	    return "redirect:/recruiter_home";
	  }
	
	@PostMapping("/addcontent")
	  public ModelAndView addcontent(@ModelAttribute("tut") AddTutorial tut)
	  {
		//System.out.println(emp.getUsername()+" , "+emp.getCompany_name()+" , " );
		int Random = (int)(Math.random()*100);
		tut.setTutid(Random);
      tutrepo.save(tut); //Updates user in database
        ModelAndView mv=new ModelAndView();
		mv.setViewName("loginsuccessadmin");
		//mv.addObject("empdata",employee);
		
		return mv;
	    //return "redirect:/recruiter_home";
	  }
	
	@PostMapping("/postthejob")
	  public ModelAndView postthejob(@ModelAttribute("rec") Jobs rec)
	  {
		
		int Random = (int)(Math.random()*100);
		rec.setRecid(Random);
        jrepo.save(rec); //Updates user in database
        ModelAndView mv=new ModelAndView();
		mv.setViewName("recruiter_home");
		//mv.addObject("empdata",employee);
		
		return mv;
	    //return "redirect:/recruiter_home";
	  }
	
	
	@GetMapping("/applyjob/{recid}/{email}")
	public ModelAndView applyjob(@PathVariable("recid") int recid,@PathVariable("email") String email)
	{
		try {
			Student s = new Student();
			s.setEmail(email);
			Student std = (Student)stdrepo.findByStudentEmailOnly(email);
			Jobs rec = jrepo.findByRecId(recid);
			int count = rec.getCount();
			
			System.out.println(std.getRtpercent()+" "+rec.getRtpercent());
			//System.out.println(std.getRtpercent()+" "+rec.getRtpercent()+" "+std.getRipercent()+" "+rec.getRipercent()+" "+std.getRdpercent()+" "+rec.getRdpercent());
			
			if(std.getRtpercent()>=rec.getRtpercent() && std.getRipercent()>=rec.getRipercent() && std.getRdpercent()>=rec.getRdpercent())
			{
				
					Recruitment rec1 = new Recruitment();
					int Random = (int)(Math.random()*100);
					rec1.setRecid(Random);
			        rec1.setCategory(rec.getCategory());
			        rec1.setCompanyid(rec.getCompanyid());
			        rec1.setDescription(rec.getDescription());
			        rec1.setDuration(rec.getDuration());
			        rec1.setJobtitle(rec.getJobtitle());
			        rec1.setRdpercent(rec.getRdpercent());
			        rec1.setRipercent(rec.getRipercent());
			        rec1.setRtpercent(rec.getRtpercent());
			        rec1.setRequirements(rec.getRequirements());
			        rec1.setStiphend(rec.getStiphend());
					rec1.setJobseekerid(std.getId());
					rec1.setStatus("Processing");
					
					rec.setCount(count+1);
					recrepo.save(rec1);
					jrepo.save(rec);
				ModelAndView mv=new ModelAndView();
				mv.setViewName("jobapplysuccess");
				mv.addObject("email",email);
				return mv;
			}
			else
			{
				ModelAndView mv=new ModelAndView();
				mv.setViewName("noteligible");
				mv.addObject("email",email);
				return mv;
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("noteligible");
		mv.addObject("email",email);
		return mv;
	}
	
	@GetMapping("/viewStd2/{companyid}/{category}")
	public ModelAndView viewStd2(@PathVariable("companyid") String companyid,@PathVariable("category") String category)
	{
		List<Recruitment> rec=recrepo.findByCompanyCategory(companyid, category);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewStd1");
		mv.addObject("rec",rec);
		return mv;
		
	}
	
	
	
	@GetMapping("/appoint/{recid}")
	public ModelAndView appoint(@PathVariable("recid") int recid)
	{
		Recruitment rec = recrepo.findByRecId(recid);
		rec.setStatus("Appointed");
		recrepo.save(rec);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updateresult");
		mv.addObject("data","Update-Success (Accepted)");
		return mv;
	}
	
	@GetMapping("/reject/{recid}")
	public ModelAndView reject(@PathVariable("recid") int recid)
	{
		Recruitment rec = recrepo.findByRecId(recid);
		rec.setStatus("Rejected");
		recrepo.save(rec);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updateresult");
		mv.addObject("data","Update-Success (Rejected)");
		return mv;
	}
	
	@GetMapping("/acceptreq/{id}")
	public ModelAndView acceptreq(@PathVariable("id") int id)
	{
		Employee emp = emprepository.findByEmpId(id);
		emp.setStatus("Accepted");
		emprepository.save(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("requeststatus");
		mv.addObject("data","Recruiter is Accepted..!");
		return mv;
	}
	
}
