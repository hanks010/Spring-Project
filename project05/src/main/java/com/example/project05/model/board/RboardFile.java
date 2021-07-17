package com.example.project05.model.board;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.web.multipart.MultipartFile;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class RboardFile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rboardFileId;
	@Column(nullable = false)
	private String origFilename;
	@Column(nullable = false)
	private String filename;
	@Column(nullable = false)
	private String filePath;
	@Column(nullable = false, columnDefinition = "MediumBlob")
	private byte[] rboardImg;
	@ManyToOne
	private Rboard rboard;

	@Builder
	public RboardFile(Long rboardFileId, String origFilename, String filename, String filePath) {
		this.rboardFileId = rboardFileId;
		this.origFilename = origFilename;
		this.filename = filename;
		this.filePath = filePath;
	}
}
