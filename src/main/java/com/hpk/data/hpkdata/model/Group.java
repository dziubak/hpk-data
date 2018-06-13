package com.hpk.data.hpkdata.model;

import lombok.Data;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.*;

@Entity
@Data
@EntityListeners(AuditingEntityListener.class)
@Table(name = "team")

public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int teacher_id;
    private String name;
    private int course;
    private String department;

    public Group(int id, int teacher_id, String name, int course, String department){
        this.id = id;
        this.teacher_id = teacher_id;
        this.name = name;
        this.course = course;
        this.department = department;
    }
    public Group(){}
}
