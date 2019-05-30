package com.hpk.data.hpkdata.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "subject")
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "abbreviation")
    private String abbreviation;

}
