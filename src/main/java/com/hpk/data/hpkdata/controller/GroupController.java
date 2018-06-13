package com.hpk.data.hpkdata.controller;


import com.hpk.data.hpkdata.model.Group;
import com.hpk.data.hpkdata.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping(value = "/group")
public class GroupController {
    @Autowired
    GroupService groupservice;

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public Group createGroup(@RequestBody Group group){
        return groupservice.create(group);
    }

    @RequestMapping("/update")
    public Group updateGroup(@RequestBody Group group){
        return  groupservice.update(group);
    }

    @RequestMapping("/delete")
    public void deleteGroup(@RequestParam("id") int id){
        groupservice.deleteById(id);
    }

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public List<Group> getGroup(){
        return groupservice.showAll();
    }

}
