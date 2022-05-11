package com.epam.rd.izh.repository;

import com.epam.rd.izh.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);

}
