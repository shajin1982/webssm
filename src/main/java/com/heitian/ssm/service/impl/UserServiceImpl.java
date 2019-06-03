package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.UserDao;
import com.heitian.ssm.model.User;
import com.heitian.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    
    @Resource
    private UserDao userDao;

    public User getUserById(Long userId) {

        return userDao.selectUserById(userId);
    }


    public User addSave(String userName,String userPhone,String userEmail,String userPwd) {
        return userDao.save(userName,userPhone,userEmail,userPwd);
    }

    public User getUserByPhoneOrEmail(String emailOrPhone, Short state) {
        return userDao.selectUserByPhoneOrEmail(emailOrPhone,state);
    }
    
    public List<User> getAllUser() {

        return userDao.selectAllUser();
    }
    public User delete(Long userId){

        return userDao.delete(userId);
    }
    public User update(Long userId,String userName,String userPhone,String userEmail,String userPwd){
        return userDao.update(userId,userName,userPhone,userEmail,userPwd);
    }
    public List<User> login(String userName,String userPwd){

        return userDao.login(userName,userPwd);
    }
}
