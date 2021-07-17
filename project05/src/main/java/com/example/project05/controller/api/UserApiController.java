package com.example.project05.controller.api;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.project05.config.auth.PrincipalDetails;
import com.example.project05.dto.CMRespDto;
import com.example.project05.dto.UserUpdateDto;
import com.example.project05.handler.ex.CustomValidationApiException;
import com.example.project05.model.user.User;
import com.example.project05.service.UserService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserApiController {

	private final UserService userService;

	@PutMapping("user/update/{userid}")
	public CMRespDto<?> update(@PathVariable Long userid, @Valid  UserUpdateDto userUpdateDto, BindingResult bindingResult,
			@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("업데이트 실행됨");
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
				System.out.println("===================================");
				System.out.println(error.getDefaultMessage());
				System.out.println("===================================");
			}
			throw new CustomValidationApiException("유효성 검사 실패", errorMap);
		} else {
			System.out.println("나 실행됨?");
			User userEntity = userService.회원수정(userid, userUpdateDto.toEntity());
			principalDetails.setUser(userEntity); // 회원정보수정
			System.out.println("수정 완료"  + principalDetails.getUser().getName());
			return new CMRespDto<>(1, "회원수정완료", userEntity);
		}
	}

}
