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
//�α��� ���� ���� 
@Resource(name ="uploadPath") //servlet-context.xml�� ������ ��Ʈ�� bean����
String uploadPath;


@RequestMapping(value="/uploadForm" , method=RequestMethod.GET)
public void uploadForm(){
	logger.info("upload �ٹ��");
	
}

//���ε� ������ ó��
@RequestMapping(value="/uploadForm.do" , method=RequestMethod.POST)
public String uploadForm(MultipartFile file, Model model) throws IOException, Exception{ 
	//���ε��������� MultiparFile�� ���δ�// �� ������ �ӽð�ο� ����
	logger.info("���ε��׽�Ʈ");
	logger.info("originalName:"+file.getOriginalFilename());
	logger.info("size:"+file.getSize());
	logger.info("contentType:"+file.getContentType());
	String savedName = uploadFile(file.getOriginalFilename(),file.getBytes());
	model.addAttribute("savedName",savedName);
	//model.addAttribute("img", file.getOriginalFilename());
	return "uploadResult";
}


String uploadFile(String originalName, byte[] fileData) throws Exception{
UUID uid = UUID.randomUUID(); // �̸��� �ߺ����� �ʰ� ó�� �����ϰ� uuid����
//Ÿ�ӽ������� ����ص� �ȴ� : 1970.1.1 ~ ���� �и�������
//���̺� ����� ���� �̸� �˻��� �ڿ� ���ڸ� �ٿ��ִ� ��ĵ� ����
//���� �����ĺ��� Universal Unique IDentifier
String savedName= uid.toString() + "_" + originalName;
File target = new File(uploadPath, savedName);
// mew File(���丮,�����̸�)
FileCopyUtils.copy(fileData, target);
//÷�������� �ӽõ��丮���� ������ ���丮�� ����
return savedName;
}
}