package com.aea.onlineassessmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.aea.onlineassessmentsystem.model.Test;

public interface TestRepository extends JpaRepository<Test,Integer> {
	
	@Query("from Test order by testDate")
	List<Test> findAllTests();

}
