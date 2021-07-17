package com.example.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project05.model.reply.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Long> {

}
