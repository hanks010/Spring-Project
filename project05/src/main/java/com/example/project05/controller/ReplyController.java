//package com.example.project05.controller;
//
//import javax.xml.stream.events.Comment;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.core.annotation.AuthenticationPrincipal;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.example.project05.model.board.Rboard;
//import com.example.project05.service.ReplyService;
//
//@RequestMapping("/reply/*")
//@RestController
//public class ReplyController {
//	
//	@Autowired
//	private ReplyService replyService;
//	
//	public ResponseEntity<String> commentInsert(@PathVariable Long id,
//			@RequestBody Comment comment,
//			@AuthenticationPrincipal PrincipalDetails principal) {
//		
//		Rboard b = new Rboard();
//		b.setNum(id);
//		comment.setRboard(b);
//		comment.setUser(principal.getUser());
//		commentService.insert(comment);
//		return new ResponseEntity<String>("success", HttpStatus.OK);
//	}
//	
//}
