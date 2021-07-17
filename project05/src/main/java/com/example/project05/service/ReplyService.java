package com.example.project05.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project05.model.reply.Reply;
import com.example.project05.model.user.User;
import com.example.project05.repository.RBoardRepository;
import com.example.project05.repository.ReplyRepository;

@Service
public class ReplyService {

	// 댓글 추가, 댓글 수정

	@Autowired
	private ReplyRepository replyRepository;
	@Autowired
	private RBoardRepository rboardRepository;

	public void insert(Reply reply) {
		replyRepository.save(reply);
	}

	@Transactional
	public void update(Reply reply, Long rboardId, User user) {
		Reply r = new Reply();
		r.setRboard(rboardRepository.findById(rboardId).get());
		r.setUser(user);
		r.setReplyContent(reply.getReplyContent());
	}
}
