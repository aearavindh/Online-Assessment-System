package com.aea.onlineassessmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.aea.onlineassessmentsystem.model.User;

public interface UserRepository extends JpaRepository<User, String> {
	
	@Query("from User order by firstName")
	List<User> findAllUsers();

}
