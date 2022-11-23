package com.care.root.boardList.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {
	public static final String IMAGE_REPO = "/Users/kdy/spring-workspace/privateProject/src/main/webapp/WEB-INF/views/saveImg";
	public String saveStoredFile(MultipartFile file);
	public String saveOriginalFile(MultipartFile file);

}
