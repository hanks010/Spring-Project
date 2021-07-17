package com.example.project05.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.project05.handler.ex.CustomValidationApiException;
import com.example.project05.model.user.User;
import com.example.project05.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Transactional
	public User 회원가입(User user) {
		String rawPassword = user.getPassword();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRole("ROLE_USER");
		User userEntity = userRepository.save(user);
		return userEntity;
	}
	@Transactional
	public User 회원수정(Long id, User user) {
		// 1.영속화
		User userEntity = userRepository.findById(id).orElseThrow(() ->{
			return new CustomValidationApiException("찾을 수 없는 id입니다.");
		});
				System.out.println("영속성 실행됨?");
				// 2.영속화된 오브젝트를 수정 - 더티체킹 (업데이트 완료)
				userEntity.setName(user.getName());
				
				String rawPassword = user.getPassword();
				String encPassword = bCryptPasswordEncoder.encode(rawPassword);
				
				userEntity.setPassword(encPassword);
				System.out.println(userEntity);
				return userEntity;

	}
	
}
