package com.pawan.dummy.repository;

import org.springframework.data.repository.CrudRepository;
import com.pawan.dummy.model.Role;

public interface RoleDao extends CrudRepository<Role, Long>{

}
