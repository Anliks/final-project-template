package com.epam.rd.izh.repository;

import com.epam.rd.izh.entity.Positions;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Positions, Long> {
    Positions findByName(String name);
}
