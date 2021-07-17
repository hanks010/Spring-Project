package com.example.project05.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project05.model.reply.ReplyFile;
import com.example.project05.repository.ReplyFileRepository;

@Service
public class ReplyFileService {
	@Autowired
	ReplyFileRepository replyFileRepository;

	@Transactional
	public void saveFile(ReplyFile replyfile) {
		ReplyFile f = new ReplyFile();
		f.setFilename(replyfile.getFilename());
		f.setOrigFilename(replyfile.getOrigFilename());
		f.setFilePath(replyfile.getFilePath());

		replyFileRepository.save(f);
	}

}
