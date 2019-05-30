package com.hpk.data.hpkdata.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "department")
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;
}
