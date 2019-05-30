package com.hpk.data.hpkdata.model;

import lombok.Data;
import javax.persistence.*;

@Entity
@Data
@Table(name = "teacher")
public class Teacher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "surname")
    private String surname;

    @Column(name = "name")
    private String name;

    @Column(name = "middle_name")
    private String middleName;

    @Column(name = "info")
    private String info;
}
