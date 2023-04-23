package com.walk.mall.tiny.modules.ums.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkstarService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/workStar")
public class UmsBusinessWorkstarController {
    @Autowired
    private UmsBusinessWorkstarService umsBusinessWorkstarService;
    
    
}
