package com.cold.service.impl;

import com.cold.entity.User;
import com.cold.mapper.UserMapper;
import com.cold.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public List<User> queryAll() {
        return userMapper.queryAll();
    }
}
