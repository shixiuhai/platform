package com.walk.mall.tiny.security.util;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import com.walk.mall.tiny.modules.ums.model.UmsAdmin;
import com.walk.mall.tiny.domain.AdminUserDetails;


/**
 * Spring工具类
 * Created by macro on 2020/3/3.
 */
@Component
public class SpringUtil implements ApplicationContextAware {

    private static ApplicationContext applicationContext;

    // 获取applicationContext
    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        if (SpringUtil.applicationContext == null) {
            SpringUtil.applicationContext = applicationContext;
        }
    }

    // 通过name获取Bean
    public static Object getBean(String name) {
        return getApplicationContext().getBean(name);
    }

    // 通过class获取Bean
    public static <T> T getBean(Class<T> clazz) {
        return getApplicationContext().getBean(clazz);
    }

    // 通过name,以及Clazz返回指定的Bean
    public static <T> T getBean(String name, Class<T> clazz) {
        return getApplicationContext().getBean(name, clazz);
    }

    // 获取用户详细信息
    public static AdminUserDetails getUserDetail(){
        return (AdminUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }

    // 获取用户账号
    public static String getUsername(){
        return (String) getUserDetail().getUsername();
    }

}
