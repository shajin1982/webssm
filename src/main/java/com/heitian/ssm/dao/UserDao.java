package com.heitian.ssm.dao;


import com.heitian.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface UserDao {

    User selectUserById(@Param("userId") Long userId);

    User selectUserByPhoneOrEmail(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<User> selectAllUser();

    User save(@Param("userName") String userName,@Param("userPhone") String userPhone,@Param("userEmail") String userEmail,@Param("userPwd") String userPwd);

    User delete(@Param("userId") Long userId);

    User update(@Param("userId") Long userId,@Param("userName") String userName,@Param("userPhone") String userPhone,@Param("userEmail") String userEmail,@Param("userPwd") String userPwd);

    List<User> login(@Param("userName") String userName,@Param("userPwd") String userPwd);

}
