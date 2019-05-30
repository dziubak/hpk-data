package com.hpk.data.hpkdata.repository;

import com.hpk.data.hpkdata.model.Group;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GroupRepository extends JpaRepository<Group, Integer> {
    Page<Group> findByTeacherId(Integer teacher_id, Pageable pageable);
}
