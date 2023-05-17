package com.walk.mall.tiny.modules.ums.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.walk.mall.tiny.utils.FileUploadUtil;
import com.walk.mall.tiny.common.api.CommonResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;
import com.walk.mall.tiny.utils.DateUtils;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@RestController
@RequestMapping("/work/upload")
public class  UmsBusinessUploadController {
    @Value("${fileUpload.specifiedPath}")
    private String specifiedPath;
    @Value("${fileUpload.sqlPath}")
    private String sqlPath;
    @PostMapping("")
    public CommonResult upload(@RequestParam MultipartFile fileName) throws IOException {
        String path = FileUploadUtil.upload(fileName, specifiedPath, sqlPath);
        if(path.equals("")){
            return CommonResult.failed("文件上传格式不合规");

        }
        return CommonResult.success(path, null);
    }
    
    @DeleteMapping("")
    public CommonResult deleteFile(@RequestParam(value="fileName",required = true) String fileName){
        boolean success = FileUploadUtil.deleteFile(specifiedPath, fileName);
        if(success){
            return CommonResult.success("文件删除成功", fileName);
        }
        return CommonResult.failed("文件删除失败");
    }

}