package com.hpk.data.hpkdata.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "classroom")
public class Classroom {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "number")
    private String number;
}
