package com.example.project05.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project05.model.board.Material;
import com.example.project05.model.board.MaterialCategory;
import com.example.project05.model.board.RboMat;
import com.example.project05.model.board.Rboard;
import com.example.project05.model.board.RboardCategory;
import com.example.project05.model.user.User;
import com.example.project05.repository.CategoryRepository;
import com.example.project05.repository.MaterialCategoryRepository;
import com.example.project05.repository.MaterialRepository;
import com.example.project05.repository.RBoardRepository;
import com.example.project05.repository.RboMatRepository;

@Service
public class RBoardService {

	// 레시피 등록, 레시피 상세보기, 레시피 전체보기(조회순으로 정렬),
	// 레시피 전체보기(최신순으로 정렬), 레시피 수정, 레시피 삭제

	@Autowired
	private MaterialRepository materialRepository;

	@Autowired
	private RBoardRepository rboardRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private RboMatRepository rbomatRepository;


	@Autowired
	private MaterialCategoryRepository mcRepository;

	public List<MaterialCategory> MatCategorylist() {
		return mcRepository.findAll();
	}

	public List<Material> Materiallist() {
		return materialRepository.findAll();
	}

	public List<RboardCategory> Categorylist() {
		return categoryRepository.findAll();
	}

	public void RboMatInsert(Rboard rboard, Material material) {
		RboMat rbomat = new RboMat();
		rbomat.setMaterial(material);
		rbomat.setRboard(rboard);
		rbomatRepository.save(rbomat);
	}


	@Transactional
	public void RboardInsert(Rboard rboard, User user) {
		rboard.setUser(user);
		rboardRepository.save(rboard);
	}

	@Transactional
	public Rboard view(Long rboardid) { // 상세보기
		Rboard rboard = rboardRepository.findById(rboardid).get();
		rboard.setHitcount(rboard.getHitcount() + 1);
		return rboard;
	}

	public Rboard findById(Long rboardid) { // 데이터 사용을 위한 데이터 조회
		return rboardRepository.findById(rboardid).get();
	}

	public List<Rboard> list() { // 전체보기
		return rboardRepository.findAll();
	}

	@Transactional
	public void RboardUpdate(Rboard rboard) { // 수정
		Rboard rboardEntity = rboardRepository.findById(rboard.getRboardId()).get();
		rboardEntity.setTitle(rboard.getTitle());
		rboardEntity.setIntro(rboard.getIntro());
		rboardEntity.setCookingTime(rboard.getCookingTime());
		rboardEntity.setHowMany(rboard.getHowMany());

	}

	public void delete(Long rboardid) {
		rboardRepository.deleteById(rboardid);
	}
}
