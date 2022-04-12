package com.klef.demo;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepository extends CrudRepository<Student,Integer>
{
	@Query("SELECT u FROM Student u WHERE u.email = ?1 and u.password = ?2")
    public Student findByStudentEmail(String email,String password);

	@Query("SELECT u FROM Student u WHERE u.email = ?1")
    public Student findByStudentEmailOnly(String email);
	
	@Query("SELECT u FROM Student u WHERE u.id = ?1")
    public Student findByStudentIdOnly(int id);
}
