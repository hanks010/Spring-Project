package com.example.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project05.model.board.RboardCategory;

public interface CategoryRepository extends JpaRepository<RboardCategory, Long> {

}
