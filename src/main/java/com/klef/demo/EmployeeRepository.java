package com.klef.demo;

import org.apache.tomcat.jni.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface EmployeeRepository extends CrudRepository<Employee,Integer>
{
	@Query("SELECT u FROM Employee u WHERE u.username = ?1 and u.password = ?2 and u.status='Accepted'")
    public Employee findByEmail(String email,String password);

	@Query("SELECT u FROM Employee u WHERE u.username = ?1")
	public Employee findByUsername(String username);
	
	@Query("SELECT u FROM Employee u WHERE u.id = ?1")
    public Employee findByEmpId(int id);
	
	
}
