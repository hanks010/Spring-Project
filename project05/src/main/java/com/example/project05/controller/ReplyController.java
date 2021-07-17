package com.example.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.project05.config.auth.PrincipalDetails;
import com.example.project05.model.board.Rboard;
import com.example.project05.model.reply.Reply;
import com.example.project05.service.ReplyService;

@RequestMapping("/reply/*")
@RestController
public class ReplyController {

	@Autowired
	private ReplyService replyService;

	
	public ResponseEntity<String> commentInsert(@PathVariable Long id, @RequestBody Reply reply,
			@AuthenticationPrincipal PrincipalDetails principal) {

		
		Rboard b = new Rboard();
		b.setUser(principal.getUser());
		reply.setRboard(b);
		reply.setUser(principal.getUser());
		replyService.insert(reply);
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}
