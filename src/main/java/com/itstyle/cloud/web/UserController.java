package com.itstyle.cloud.web;


import com.itstyle.cloud.common.dynamicquery.DynamicQuery;
import com.itstyle.cloud.common.entity.Result;
import com.itstyle.cloud.common.entity.SysUser;
import com.itstyle.cloud.common.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private DynamicQuery dynamicQuery;
    @Autowired
    private HttpServletRequest  request;

    @RequestMapping(value="login")
    private Result login(String username,String password){
        String sql = "SELECT * FROM sys_user WHERE username=?";
        SysUser user = dynamicQuery.nativeQuerySingleResult(SysUser.class,sql,new Object[]{username});
        if(user!=null){
            if(MD5Utils.getSaltverifyMD5(password,user.getPassword())){
                request.getSession().setAttribute("user",user);
                return  Result.ok();
            }else{
                return  Result.error("密码不正确");
            }
        }else{
            return  Result.error("账号不存在");
        }
    }

}
