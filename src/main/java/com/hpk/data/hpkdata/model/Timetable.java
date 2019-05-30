package com.hpk.data.hpkdata.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.DayOfWeek;

@Entity
@Data
@Table(name = "timetable")
public class Timetable implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "day_of_week")
    @Enumerated(EnumType.STRING)
    private DayOfWeek dayOfWeek;

    @Column(name = "number_of_couple")
    private String numberOfCouple;

    @Column(name = "position")
    private String position;

    @ManyToOne
    @JoinColumn(name = "group_id", nullable = false)
    private Group group;

    @ManyToOne
    @JoinColumn(name = "subject_id", nullable = false)
    private Subject subject;

    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private Teacher teacher;

    @ManyToOne
    @JoinColumn(name = "teacher_second_id")
    private Teacher teacherSecond;

    @ManyToOne
    @JoinColumn(name = "classroom_id", nullable = false)
    private Classroom classroom;

    @ManyToOne
    @JoinColumn(name = "classroom_second_id")
    private Classroom classroomSecond;
}
