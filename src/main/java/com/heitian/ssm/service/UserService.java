package com.heitian.ssm.service;

import com.heitian.ssm.model.User;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    List<User> getAllUser();

    User getUserByPhoneOrEmail(String emailOrPhone, Short state);

    User getUserById(Long userId);

    User addSave(String userName,String userPhone,String userEmail,String userPwd);

    User delete(Long userId);

    User update(Long userId,String userName,String userPhone,String userEmail,String userPwd);

    List<User> login(String userName,String userPwd);
}
