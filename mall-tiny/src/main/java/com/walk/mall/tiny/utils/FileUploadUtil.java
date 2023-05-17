package com.walk.mall.tiny.utils;
// import com.walk.mall.tiny.utils.DateUtils;
import java.io.File;
import java.util.Date;
import java.util.UUID;
import org.springframework.web.multipart.MultipartFile;
import lombok.extern.slf4j.Slf4j;
@Slf4j
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
	public static String upload(MultipartFile file,String specifiedPath,String sqlPath) {
		try {
			//文件扩展名
			String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			String[] suffixSafe = {".jpg", ".png", ".jpeg", ".PNG","JPEG",".mp4",".flv",".m3u8"};
			boolean flag = false;
			for (String s : suffixSafe) {
				if (extName.toLowerCase().equals(s)) {
					flag = true;
					break;
				}
			}
			if(flag){
				String path = specifiedPath+"/"+DateUtils.format(new Date(),DateUtils.DATE);
				String fileName = getFileName() + extName;
				File file2 = new File(path);
				if (!file2.exists()) {
					file2.mkdirs();
				}
				file.transferTo(new File(path + "/" + fileName));
				return sqlPath + "/" + DateUtils.format(new Date(),DateUtils.DATE) + "/" + fileName;
			}
			return "";
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public static boolean deleteFile(String filePath, String fileName){
		File file = new File(filePath+"/"+fileName);
		if (file.exists()) {
            file.delete();
            log.info("===========文件删除成功=================");
            return true;
        } else {
            log.error("===============文件删除失败==============");
            return false;
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

	
	
}
