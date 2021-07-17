package com.example.project05.model.user;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;

import com.example.project05.model.board.Rboard;
import com.example.project05.model.product.Cart;
import com.example.project05.model.product.UOrder;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(length = 20, unique = true)
	private String username;
	@Column(nullable = false)
	private String password;
	private String userPhone;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String name;

	private LocalDateTime createDate;

	@PrePersist // 디비에 insert 되기 직전에 실행
	public void createDate() {
		this.createDate = LocalDateTime.now();
	}

	@Embedded
	private Address address;

	private String role;
	
	@OneToMany(mappedBy = "user")
	private List<Cart> carts;

	@OneToMany(mappedBy = "user")
	private List<UOrder> orders;

}
