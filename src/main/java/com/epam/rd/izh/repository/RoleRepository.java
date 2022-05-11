package com.epam.rd.izh.repository;

import com.epam.rd.izh.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
