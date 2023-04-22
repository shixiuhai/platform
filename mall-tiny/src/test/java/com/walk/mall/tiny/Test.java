package com.walk.mall.tiny;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.extern.slf4j.Slf4j;
@Slf4j
public class Test {
    // @Autowired
    // private UmsAdminService umsAdminService;
    
    public static void getToken(){
        log.info("hello word");
        String token = null;
        // token = umsAdminService.login("shixiuhai","123456");
        log.info("{}",token);

    }
    public static void main(String[] args) {
        // String extName = "myfile.pdf";
        // String fileExt = extName.substring(extName.lastIndexOf("."));
        // System.out.println(fileExt);  //输出 ".pdf"
        // List<String> l = new ArrayList<>();
        // l.add("123");
        // l.forEach(t->{
        //  log.info("ni{}",t);
            
        // });
        // for(String s:l){
        //  log.info("2o{}",s);
        
            


        // }
        log.info("{}","good");
        getToken();
    }
      
    
}
