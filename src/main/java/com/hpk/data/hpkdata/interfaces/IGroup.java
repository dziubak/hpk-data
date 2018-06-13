package com.hpk.data.hpkdata.interfaces;

import com.hpk.data.hpkdata.model.Group;

import java.util.List;

public interface IGroup {
    Group create(Group group);
    Group update(Group group);
    void deleteById(int id);
    List<Group> showAll();
}
