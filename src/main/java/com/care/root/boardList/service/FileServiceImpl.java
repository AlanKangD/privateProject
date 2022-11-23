package com.care.root.boardList.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Primary
@Service
public class FileServiceImpl implements FileService {

	@Override
	public String saveStoredFile(MultipartFile file) {
		// 파일명을 '202205201022-파일명' 형식으로 만들기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss-");
		Calendar calendar = Calendar.getInstance();

		// 컨트롤러에서 전달 받은 file의 오리지널 파일 네임을 가져와서 시간 형식을 붙인 뒤 storedFileName에 저장
		String storedFileName = sdf.format(calendar.getTime()) + file.getOriginalFilename();
				
		// IMAGE_REPO(/Users/kdy/.../saveImg/파일) 경로로 들어가게 지정
		File saveStoredFile = new File(IMAGE_REPO + "/" + storedFileName);
				
		try {
			file.transferTo(saveStoredFile);	// 해당 위치에 파일 저장
		} catch (Exception e) {
			e.printStackTrace();
		}
		return storedFileName;
	}

	@Override
	public String saveOriginalFile(MultipartFile file) {
		String originalFileName = file.getOriginalFilename();
		return originalFileName;
	}

}
