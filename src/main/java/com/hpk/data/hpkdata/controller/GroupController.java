package com.hpk.data.hpkdata.controller;

import com.hpk.data.hpkdata.model.Group;
import com.hpk.data.hpkdata.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping(value = "/group")
public class GroupController {

    @Autowired
    GroupRepository groupRepository;

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public Group createGroup(@RequestBody Group group){
        return groupRepository.save(group);
    }

    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public Group updateGroup(@RequestBody Group group){
        return  groupRepository.save(group);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public void deleteGroup(@RequestParam("id") int id){
        groupRepository.deleteById(id);
    }

   @RequestMapping(value = "/get", method = RequestMethod.GET)
    public List<Group> getGroup(){
        return (List) groupRepository.findAll();
    }

}
