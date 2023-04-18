package com.walk.mall.tiny;

public class Test {
    public static void main(String[] args) {
        String extName = "myfile.pdf";
        String fileExt = extName.substring(extName.lastIndexOf("."));
        System.out.println(fileExt);  //输出 ".pdf"
        
    }
    
}
