package com.walk.mall.tiny.utils;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtil {
	/**
	 * 
	 * @Title: upload 
	 * @Description: (将文件保存到指定的路径下) 
	 * @param file

	 * @return  
	 * @date 2019年9月30日 上午10:22:31
	 * @author 亦知
	 */
	public static String upload(MultipartFile file,String specifiedPath) {
		try {
			String extName = file.getOriginalFilename();
			// 获取文件后缀
			if (extName.lastIndexOf(".") <= 0) {
				throw new RuntimeException("不支持该文件类型");
			}
			extName = extName.substring(extName.lastIndexOf("."));
			String fileName = getFileName();
			// 获取文件名字
			fileName = getFileName() + extName;
			File file2 = new File(specifiedPath);
			if (!file2.exists()) {
				file2.mkdirs();
			}
			file.transferTo(new File(specifiedPath + File.separator+ fileName));
			return fileName;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 获取文件名
	 * @return
	 */
	public static String getFileName() {
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replace("-", "");
		return uuid.toLowerCase();
	}

	public static String getWebUrl() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		return  request.getServletContext().getRealPath("/img");
	}
	
	public static String getWebProUrl() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		return request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +request.getContextPath();
	}
	
}
