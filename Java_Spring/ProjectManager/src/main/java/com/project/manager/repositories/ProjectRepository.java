package com.project.manager.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.manager.models.Project;
import com.project.manager.models.User;

@Repository
public interface ProjectRepository extends CrudRepository<Project, Long> {
	public List<Project> findAll();
	Project findByIdIs(Long id);
	List<Project>findAllByUsers(User user);
	List<Project>findNotByUsers(User user);

}
