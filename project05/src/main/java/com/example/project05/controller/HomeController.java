package com.example.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.project05.service.RBoardService;

@Controller
@RequestMapping("/*")
public class HomeController {

	@Autowired
	private RBoardService rboardService;
	
	@GetMapping({"","list"}) // 레시피 목록 가져오기
	public String list(Model model) {
		model.addAttribute("rboardlist", rboardService.list());
		return "home";
	}
}
