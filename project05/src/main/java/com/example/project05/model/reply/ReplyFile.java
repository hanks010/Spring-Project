package com.example.project05.model.reply;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class ReplyFile {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long replyFileId;
	@Column(nullable = false)
	private String origFilename;
	@Column(nullable = false)
	private String filename;
	@Column(nullable = false)
	private String filePath;
	@Column(nullable = false, columnDefinition = "MediumBlob")
	private byte[] replyImg;

	@ManyToOne
	private Reply reply;

	@Builder
	public ReplyFile(Long replyFileId, String origFilename, String filename, String filePath) {
		this.replyFileId = replyFileId;
		this.origFilename = origFilename;
		this.filename = filename;
		this.filePath = filePath;
	}
}
