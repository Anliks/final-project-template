package com.epam.rd.izh.entity;


import lombok.Data;

import javax.persistence.*;
import java.sql.Blob;


@Data
@Entity
@Table(name = "t_products")
public class Positions {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String type;
    private String country;
    @Column(length = 500)
    private String description;
    private Long price;
    private String img;


    public Positions() {

    }

  public Positions(int id, String name, String type, String country, String description, Long price, String img) {
    this.id = id;
    this.name = name;
    this.type = type;
    this.country = country;
    this.description = description;
    this.price = price;
    this.img = img;

  }

}
