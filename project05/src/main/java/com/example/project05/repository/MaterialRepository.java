package com.example.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project05.model.board.Material;

public interface MaterialRepository extends JpaRepository<Material, Long>{
}
