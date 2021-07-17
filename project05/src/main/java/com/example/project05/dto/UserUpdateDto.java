package com.example.project05.dto;

import javax.validation.constraints.NotBlank;

import com.example.project05.model.user.User;

import lombok.Data;

@Data
public class UserUpdateDto {
	@NotBlank
	private String name; // 필수
	@NotBlank
	private String password; // 필수
	
	// 위험 -> 코드 수정 예정
	public User toEntity() {
		return User.builder()
				.name(name) // 이름을 기재 안했으면 문제 validation체크
				.password(password) // 패스워드를 기재 안했으면 문제됨 validation체크
				.build();
	}

}
