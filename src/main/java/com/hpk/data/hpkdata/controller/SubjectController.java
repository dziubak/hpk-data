package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Subject;
import com.hpk.data.hpkdata.repository.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/subject")
public class SubjectController {

    @Autowired
    SubjectRepository subjectRepository;

    @RequestMapping
    public ModelAndView getAllSubject(ModelAndView modelAndView){
        modelAndView.setViewName("subject/subject_show");
        modelAndView.addObject("subjects", subjectRepository.findAll());
        return modelAndView;
    }

    @RequestMapping("/create")
    public ModelAndView create(){
        return new ModelAndView("subject/subject_create");
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("subject")Subject subject){
        subjectRepository.save(subject);
        return new ModelAndView("redirect:/subject");
    }

    @RequestMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") int id, ModelAndView modelAndView){
        modelAndView.setViewName("subject/subject_update");
        modelAndView.addObject("subject", subjectRepository.getOne(id));
        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute("subject") Subject subject){
        subjectRepository.save(subject);
        return new ModelAndView("redirect:/subject");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        subjectRepository.deleteById(id);
        return new ModelAndView("redirect:/subject");
    }

}
