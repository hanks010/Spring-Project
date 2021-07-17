package com.example.project05.dto;

import java.util.List;

import com.example.project05.model.board.RboMat;

import lombok.Data;

@Data
public class RboardDto {
	private String title;
	private String intro;
	private String category;
	private String cookingTime;
	private String howMany;
	private String difficulty;
	private List<Long> materialcategory;
	private List<Long> material;
	private List<String> materialQty;
	private String content;
}
