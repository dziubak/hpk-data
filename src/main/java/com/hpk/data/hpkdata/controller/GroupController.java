package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Group;
import com.hpk.data.hpkdata.repository.DepartmentRepository;
import com.hpk.data.hpkdata.repository.GroupRepository;
import com.hpk.data.hpkdata.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping(value = "/group")
public class GroupController {

    @Autowired
    GroupRepository groupRepository;

    @Autowired
    TeacherRepository teacherRepository;

    @Autowired
    DepartmentRepository departmentRepository;

    @RequestMapping
    public ModelAndView getAllGroups(ModelAndView modelAndView){
        modelAndView.setViewName("group/group_show");
        modelAndView.addObject("groups", groupRepository.findAll());

        return modelAndView;
    }

    @RequestMapping("/create")
    public ModelAndView create(ModelAndView modelAndView){
       modelAndView.setViewName("group/group_create");
       modelAndView.addObject("teachers", teacherRepository.findAll());
       modelAndView.addObject("departments", departmentRepository.findAll());

       return modelAndView;
    }

    @PostMapping("/create")
    public ModelAndView createGroup(@ModelAttribute("group") Group group){
        groupRepository.save(group);
        return new ModelAndView("redirect:/group");
    }

    @RequestMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") int id,ModelAndView modelAndView){
        modelAndView.setViewName("group/group_update");
        modelAndView.addObject("group", groupRepository.getOne(id));
        modelAndView.addObject("teachers", teacherRepository.findAll());
        modelAndView.addObject("departments", departmentRepository.findAll());

        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute("group") Group group){
        groupRepository.save(group);
        return new ModelAndView("redirect:/group");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView deleteGroup(@PathVariable("id") int id){
        groupRepository.deleteById(id);
        return new ModelAndView("redirect:/group");
    }

}
