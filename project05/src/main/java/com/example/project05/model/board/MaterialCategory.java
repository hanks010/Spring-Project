package com.example.project05.model.board;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class MaterialCategory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long materialCategoryid;

	private String categoryName;

}
