package com.hpk.data.hpkdata.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "team")
@Getter @Setter
@ToString
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "teacher_id")
    private int teacherId;

    private String name;
    private int course;
    private String department;

    public Group(int teacherId, String name, int course, String department){
        this.teacherId = teacherId;
        this.name = name;
        this.course = course;
        this.department = department;
    }
    public Group(){}
}
