package com.klef.demo;

import java.util.List;
import java.util.Optional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService 
{
	@Autowired
	EmployeeRepository emprepository;
	
	public void addemployeerecord(Employee emp)
	{
		emprepository.save(emp);
	}
	
	public List<Employee> getallemployeerecords()
	{
		return (List<Employee>) emprepository.findAll();
	}
	
	public Optional<Employee> getallemployeerecordsbyid(int id)
	{
		return emprepository.findById(id);
	}
	public void deleteemployeerecord(int id)
	{
		emprepository.deleteById(id);
	}
	public Employee loginvalid(Employee emp)
	{
		Employee emp1 = (Employee)emprepository.findByEmail(emp.getUsername(),emp.getPassword());
		return emp1;
	}
}
