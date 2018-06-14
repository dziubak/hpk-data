package com.hpk.data.hpkdata.model;

import lombok.Data;
import javax.persistence.*;

@Entity
@Data
@Table(name = "team")

public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "teacher_id")
    private int teacherId;

    private String name;
    private int course;
    private String department;
}
