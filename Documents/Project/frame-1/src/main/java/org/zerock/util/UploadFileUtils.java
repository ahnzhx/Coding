package org.zerock.util;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UploadFileUtils {
	private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
	
	public static String MakeThumbnail(String uploadPath, String orginalName, byte[] fileData) throws Exception{
		
		BufferedImage soureImage = ImageIO.read(new File(uploadPath, orginalName));
		BufferedImage destImg = Scalr.resize(soureImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);
		
		String thumbnailName = uploadPath +File.separator + "_s" + orginalName;
		
		File newFile = new File(orginalName);
		String formatName = orginalName.substring(orginalName.lastIndexOf(".")+1);
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		
		return thumbnailName.substring(
		uploadPath.length()).replace(File.separatorChar, '/');
	}
}
