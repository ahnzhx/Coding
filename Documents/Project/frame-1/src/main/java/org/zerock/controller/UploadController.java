package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
	private static final Logger logger
	=LoggerFactory.getLogger(UploadController.class);
//로깅을 위한 설정 
@Resource(name ="uploadPath") //servlet-context.xml에 선언한 스트링 bean설정
String uploadPath;


@RequestMapping(value="/uploadForm" , method=RequestMethod.GET)
public void uploadForm(){
	logger.info("upload 겟방식");
	
}

//업로드 내용을 처리
@RequestMapping(value="/uploadForm.do" , method=RequestMethod.POST)
public String uploadForm(MultipartFile file, Model model) throws IOException, Exception{ 
	//업로드한파일이 MultiparFile에 쌓인다// 이 파일은 임시경로에 저장
	logger.info("업로드테스트");
	logger.info("originalName:"+file.getOriginalFilename());
	logger.info("size:"+file.getSize());
	logger.info("contentType:"+file.getContentType());
	String savedName = uploadFile(file.getOriginalFilename(),file.getBytes());
	model.addAttribute("savedName",savedName);
	//model.addAttribute("img", file.getOriginalFilename());
	return "uploadResult";
}


String uploadFile(String originalName, byte[] fileData) throws Exception{
UUID uid = UUID.randomUUID(); // 이름이 중복되지 않게 처리 랜덤하게 uuid생성
//타임스탬프를 사용해도 된다 : 1970.1.1 ~ 현재 밀리세컨드
//테이블에 저장된 파일 이름 검색후 뒤에 숫자를 붙여주는 방식도 있음
//범용 고유식별자 Universal Unique IDentifier
String savedName= uid.toString() + "_" + originalName;
File target = new File(uploadPath, savedName);
// mew File(디렉토리,파일이름)
FileCopyUtils.copy(fileData, target);
//첨부파일을 임시디렉토리에서 지정한 디렉토리로 복사
return savedName;
}
}