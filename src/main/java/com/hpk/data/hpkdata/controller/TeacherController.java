package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Teacher;
import com.hpk.data.hpkdata.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {

    @Autowired
    TeacherRepository teacherRepository;

    @RequestMapping
    public ModelAndView getAllTeacher(ModelAndView modelAndView ){
        modelAndView.setViewName("teacher/teacher_show");
        modelAndView.addObject("teachers", teacherRepository.findAll());

        return modelAndView;
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("teacher") Teacher teacher){
        teacherRepository.save(teacher);
        return new ModelAndView("redirect:/teacher/get");
    }

    @RequestMapping("/create")
    public ModelAndView create(){
        return new ModelAndView("teacher/teacher_create");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        teacherRepository.deleteById(id);
        return new ModelAndView("redirect:/teacher");
    }

    @RequestMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") int id, ModelAndView modelAndView){
        modelAndView.setViewName("teacher/teacher_update");
        modelAndView.addObject("teacher", teacherRepository.getOne(id));

        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute("teacher") Teacher teacher){
        teacherRepository.save(teacher);
        return new ModelAndView("redirect:/teacher");
    }
}
