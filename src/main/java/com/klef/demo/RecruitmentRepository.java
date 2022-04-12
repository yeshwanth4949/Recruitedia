package com.klef.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface RecruitmentRepository extends CrudRepository<Recruitment,Integer>
{
	@Query("SELECT u FROM Recruitment u WHERE u.recid = ?1")
    public Recruitment findByRecId(int recid);
	
	@Query("SELECT u FROM Recruitment u WHERE u.companyid = ?1 and u.status='Processing'")
    public List<Recruitment> findByCompanyId(String companyid);
	
	@Query("SELECT u FROM Recruitment u")
    public Recruitment findAllUniqueJobs();
	
	@Query("SELECT u FROM Recruitment u WHERE u.jobseekerid = ?1")
    public Recruitment findByJobSeekerId(int jid);
    
	@Query("SELECT u FROM Recruitment u WHERE u.jobseekerid = ?1")
	public List<Recruitment> findAllByJId(int id);
	
	@Query("SELECT u FROM Recruitment u WHERE u.companyid = ?1 and u.category=?2 ")
    public List<Recruitment> findByCompanyCategory(String companyid,String category);

}
