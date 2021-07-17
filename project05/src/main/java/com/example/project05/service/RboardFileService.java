package com.example.project05.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project05.model.board.RboardFile;
import com.example.project05.model.reply.ReplyFile;
import com.example.project05.repository.RboardFileRepository;
import com.example.project05.repository.ReplyFileRepository;

@Service
public class RboardFileService {
	@Autowired
	RboardFileRepository rboardFileRepository;

	@Transactional
	public void saveFile(RboardFile rboardFile) {
		RboardFile rf = new RboardFile();
		rf.setFilename(rboardFile.getFilename());
		rf.setOrigFilename(rboardFile.getOrigFilename());
		rf.setFilePath(rboardFile.getFilePath());
		
		rboardFileRepository.save(rf);
	}

	
}
