package com.example.project05.model.reply;

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

import com.example.project05.model.board.Rboard;
import com.example.project05.model.user.User;

import lombok.Data;

@Entity
@Data
public class Reply {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long replyId;

	private String replyContent;
	private Date regdate;
	private Long rating;

	@OneToMany(mappedBy = "reply")
	List<ReplyFile> replyfilelists;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rboard_id")
	private Rboard rboard;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;
}
