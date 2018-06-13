package com.hpk.data.hpkdata.service;

import com.hpk.data.hpkdata.model.Group;
import com.hpk.data.hpkdata.interfaces.IGroup;
import com.hpk.data.hpkdata.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GroupService implements IGroup {

    @Autowired
    GroupRepository grouprepository;

    @Override
    public Group create(Group group) {
        return grouprepository.save(group);
    }

    @Override
    public Group update(Group group) {
        return grouprepository.save(group);
    }

    @Override
    public void deleteById(int id) {
        grouprepository.deleteById(id);
    }

    @Override
    public List<Group> showAll() {
        return grouprepository.findAll();
    }
}
