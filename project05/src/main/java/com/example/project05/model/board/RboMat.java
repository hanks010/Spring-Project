package com.example.project05.model.board;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class RboMat {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rboMatId;

	@ManyToOne
	@JoinColumn(name = "rboard_id")
	private Rboard rboard;

	@ManyToOne
	@JoinColumn(name = "material_id")
	private Material material;

}
