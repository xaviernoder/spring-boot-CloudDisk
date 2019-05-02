package com.itstyle.cloud.repository;

import com.itstyle.cloud.common.entity.SysUser;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<SysUser, Integer> {

}