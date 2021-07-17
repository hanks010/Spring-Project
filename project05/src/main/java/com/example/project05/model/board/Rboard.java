package com.example.project05.model.board;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;

import com.example.project05.model.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Rboard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rboardId;
	private double rating;
	private Long hitcount;

	private String title; // 제목
	private String intro; // 요리 소개

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;

	private String materialQty; // 재료 수량
	private String cookingTime; // 조리시간
	private String howMany; // 몇인분
	private String difficulty; // 난이도

	private Long searchcount;
	private Date regdate;

	@OneToMany(mappedBy = "rboard")
	private List<RboMat> rbomatlists;

	@ManyToOne
	private RboardCategory rbcategory;

	@PrePersist
	public void prePersist() {
		this.hitcount = this.hitcount == null ? 0 : this.hitcount;
		this.searchcount = this.searchcount == null ? 0 : this.searchcount;
	}

}