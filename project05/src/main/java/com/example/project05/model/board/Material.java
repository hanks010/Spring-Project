package com.example.project05.model.board;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Material {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long materialid; // 재료번호, 첫 글자 대문자이면 안 됨
	private String materialName; // 재료 이름

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "mat_category_id")
	private MaterialCategory materialCategory;

}
