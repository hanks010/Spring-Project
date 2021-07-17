package com.example.project05.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.project05.config.auth.PrincipalDetails;
import com.example.project05.dto.CMRespDto;
import com.example.project05.dto.SignupDto;
import com.example.project05.dto.UserUpdateDto;
import com.example.project05.handler.ex.CustomValidationApiException;
import com.example.project05.handler.ex.CustomValidationException;
import com.example.project05.model.user.User;
import com.example.project05.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping({"/","home"})
	public String home() {
		return "home";
	}
	
	@GetMapping("signin")
	public String signin() {
		return "/signin";
	}
	
	@GetMapping("signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("signin")
	public String signin(User user) {
		return "/signin";
	}
	
	@PostMapping("signup")
	public String signup(@Valid SignupDto signupDto,BindingResult bindingResult) {
		
		if(bindingResult.hasErrors()) {
			Map<String,String> errorMap = new HashMap<>();
			for(FieldError error:bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
				System.out.println("===================================");
				System.out.println(error.getDefaultMessage());
				System.out.println("===================================");
			}
			throw new CustomValidationException("유효성 검사 실패",errorMap);
		} else {	
		User user = signupDto.toEntity();
		User userEntity = userService.회원가입(user);
		System.out.println(userEntity);
		return "signin";
		}
	}
	
	@GetMapping("user/update/{id}")
	public String update(@PathVariable Long id, @AuthenticationPrincipal  PrincipalDetails principalDetails) {
		//System.out.println("세션 :" + principalDetails.getUser().getUsername());
		return "user/update";
	}
	
	
}
