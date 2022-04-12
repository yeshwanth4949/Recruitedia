package com.klef.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface JobsRepository extends CrudRepository<Jobs,Integer>
{
	@Query("SELECT u FROM Jobs u WHERE u.recid = ?1")
    public Jobs findByRecId(int recid);
	
	@Query("SELECT u FROM Jobs u WHERE u.companyid = ?1 or u.category = ?1 or jobtitle = ?1")
    public List<Jobs> findByCid(String cid);
	
	@Query("SELECT u FROM Jobs u")
    public Jobs findAllUniqueJobs();
	
	@Query("SELECT u FROM Jobs u WHERE u.companyid = ?1")
    public List<Jobs> findByCompanyId(String companyid);
	

}
