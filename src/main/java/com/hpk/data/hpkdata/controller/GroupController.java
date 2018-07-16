package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Group;
import com.hpk.data.hpkdata.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

@Controller
@RequestMapping(value = "/group")
public class GroupController {

    @Autowired
    GroupRepository groupRepository;

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createGroup(@ModelAttribute("group") Group group){
        groupRepository.save(group);
        return "redirect:/group/get";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteGroup(@PathVariable("id") int id){
        groupRepository.deleteById(id);
        return "redirect:/group/get";
    }

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public String getAllUsers(Map<String, Object> map){
        map.put("groups", groupRepository.findAll());
        return "group_show";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") int id, Model model){
        model.addAttribute("group", groupRepository.getOne(id));
        return "group_update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("group") Group group){
        groupRepository.save(group);
        return "redirect:/group/get";
    }

}
