package com.example.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project05.model.board.Rboard;

public interface RBoardRepository extends JpaRepository<Rboard, Long>{

}
