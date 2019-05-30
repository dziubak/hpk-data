package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Timetable;
import com.hpk.data.hpkdata.repository.*;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.time.DayOfWeek;

@Log4j2
@Controller
@RequestMapping(value = "/timetable")
public class TimetableController {

    @Autowired
    TimetableRepository timetableRepository;

    @Autowired
    GroupRepository groupRepository;

    @Autowired
    SubjectRepository subjectRepository;

    @Autowired
    TeacherRepository teacherRepository;

    @Autowired
    ClassroomRepository classroomRepository;

    @RequestMapping
    public ModelAndView getAllTimetables(ModelAndView modelAndView){
        modelAndView.setViewName("timetable/timetable_show");
        modelAndView.addObject("timetables", timetableRepository.findAll());
        return modelAndView;
    }

    @RequestMapping("/create")
    public ModelAndView create(ModelAndView modelAndView){
        modelAndView.setViewName("timetable/timetable_create");
        modelAndView.addObject("daysofweek", DayOfWeek.values());
        modelAndView.addObject("groups", groupRepository.findAll());
        modelAndView.addObject("subjects", subjectRepository.findAll());
        modelAndView.addObject("teachers", teacherRepository.findAll());
        modelAndView.addObject("classrooms", classroomRepository.findAll());

        return modelAndView;
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("timetable")Timetable timetable){
        timetableRepository.save(timetable);
        return new ModelAndView("redirect:/timetable");
    }

    @RequestMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") int id, ModelAndView modelAndView){
        try {
            modelAndView.setViewName("timetable/timetable_update");
            modelAndView.addObject("timetable", timetableRepository.getOne(id));
            modelAndView.addObject("daysofweek", DayOfWeek.values());
            modelAndView.addObject("groups", groupRepository.findAll());
            modelAndView.addObject("subjects", subjectRepository.findAll());
            modelAndView.addObject("teachers", teacherRepository.findAll());
            modelAndView.addObject("classrooms", classroomRepository.findAll());

        }catch (Exception ex){
            log.error(ex);
        }

        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute("timetable") Timetable timetable){
        timetableRepository.save(timetable);
        return new ModelAndView("redirect:/timetable");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        timetableRepository.deleteById(id);
        return new ModelAndView("redirect:/timetable");
    }

}
