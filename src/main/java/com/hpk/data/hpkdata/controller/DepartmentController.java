package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Department;
import com.hpk.data.hpkdata.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/department")
public class DepartmentController {

    @Autowired
    DepartmentRepository departmentRepository;

    @RequestMapping
    public ModelAndView getAllDepartment(ModelAndView modelAndView){
        modelAndView.setViewName("department/department_show");
        modelAndView.addObject("departments", departmentRepository.findAll());

        return modelAndView;
    }

    @RequestMapping("/create")
    public ModelAndView create(){
        return new ModelAndView("department/department_create");
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("department") Department department){
        departmentRepository.save(department);
        return new ModelAndView("redirect:/department");
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        departmentRepository.deleteById(id);
        return new ModelAndView("redirect:/department");
    }

    @RequestMapping("update/{id}")
    public ModelAndView update(@PathVariable("id") int id, ModelAndView modelAndView){
        modelAndView.setViewName("department/department_update");
        modelAndView.addObject("departments", departmentRepository.getOne(id));

        return modelAndView;
    }

    @PostMapping("update")
    public ModelAndView update(@ModelAttribute("department") Department department){
        departmentRepository.save(department);
        return new ModelAndView("redirect:/department");
    }
}
