package com.klef.demo;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;




@Service
public class StudentService 
{
	@Autowired
	StudentRepository stdrepository;
	
	public void addstdrecord(Student std)
	{
		stdrepository.save(std);
	}
	
	public Optional<Student> getallstdrecordsbyid(int id)
	{
		return stdrepository.findById(id);
	}
	public void deletestdrecord(int id)
	{
		stdrepository.deleteById(id);
	}
	public Student findbyStudentEmail(Student std)
	{
		Student std1 = stdrepository.findByStudentEmail(std.getEmail(), std.getPassword());
		return std1;
	}
	
	
	
	//start
	//view all
	public List<Student> getallstdrecords()
	{
		return (List<Student>)stdrepository.findAll();
	}
	
	//Added
	
	public Student createStudent(Student student) {
		return stdrepository.save(student);

	}


	public List<Student> getAllStudents() {
		return (List<Student>) stdrepository.findAll();
	}
	
	
	public byte[] resume(MultipartFile file) throws IOException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        return file.getBytes();
    }
	
	
	public void ApplytheJob(Student jobAppliedDetails,MultipartFile file) throws IOException {
        if(jobAppliedDetails!=null) {
            jobAppliedDetails.setResume(resume(file));
            stdrepository.save(jobAppliedDetails);
        }
		/*
		 * else this.Student=jobApplied;
		 */
    }
	
}

	