package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Classroom;
import com.hpk.data.hpkdata.repository.ClassroomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/classroom")
public class ClassroomController {

    @Autowired
    ClassroomRepository classroomRepository;

    @RequestMapping
    public ModelAndView getAllClassroom(ModelAndView modelAndView){
        modelAndView.setViewName("classroom/classroom_show");
        modelAndView.addObject("classrooms", classroomRepository.findAll());

        return modelAndView;
    }

    @RequestMapping("/create")
    public ModelAndView create(){
        return new ModelAndView("classroom/classroom_create");
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("classroom") Classroom classroom){
        classroomRepository.save(classroom);
        return new ModelAndView("redirect:/classroom");
    }

    @RequestMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") int id, ModelAndView modelAndView){
        modelAndView.setViewName("classroom/classroom_update");
        modelAndView.addObject("classroom", classroomRepository.getOne(id));

        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute("classroom") Classroom classroom){
        classroomRepository.save(classroom);
        return new ModelAndView("redirect:/classroom");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        classroomRepository.deleteById(id);
        return new ModelAndView("redirect:/classroom");
    }
}
