package com.example.project05.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.project05.config.auth.PrincipalDetails;
import com.example.project05.dto.RboardDto;
import com.example.project05.model.board.Material;
import com.example.project05.model.board.MaterialCategory;
import com.example.project05.model.board.Rboard;
import com.example.project05.model.board.RboardCategory;
import com.example.project05.service.RBoardService;
import com.example.project05.service.RboardFileService;

@Controller
@RequestMapping("/rboard/*")
public class RBoardController {

	@Autowired
	private RBoardService rboardService;

	@Autowired
	private RboardFileService rboardFileService;

	// 레시피 등록, 레시피 상세보기, 레시피 전체보기(조회순으로 정렬),
	// 레시피 전체보기(최신순으로 정렬), 레시피 수정, 레시피 삭제

	// 레시피 상세보기
	@GetMapping("view/{rboardid}")
	public String view(@PathVariable Long rboardid, Model model) {
		Rboard rboard = rboardService.view(rboardid);
		model.addAttribute("rboard", rboard);
		return "board/boardtest";
	}

	// 레시피 등록
	@GetMapping("user/insert")
	@PreAuthorize("isAuthenticated()")
	public String RboardInsert(Model model) {
		List<Material> materiallist = rboardService.Materiallist();
		List<RboardCategory> categorylists = rboardService.Categorylist();
		List<MaterialCategory> matCategorylists = rboardService.MatCategorylist();
		model.addAttribute("materiallist", materiallist);
		model.addAttribute("matCategorylists", matCategorylists);
		model.addAttribute("categories", categorylists);
		return "board/rinsert";
	}

	@PostMapping("user/insert")
	@ResponseBody
	public String RboardInsert(@RequestParam("materialcategory") List<Long> materialcategory,
			@RequestParam("material") List<Long> material, @RequestParam("materialQty") List<String> materialQty,
			RboardDto rboardDto, @AuthenticationPrincipal PrincipalDetails principal) throws IOException {

		for (Long m : materialcategory)
			System.out.println("materialcategory: " + m);
		for (Long m2 : material)
			System.out.println("material: " + m2);
		for (String m3 : materialQty)
			System.out.println("materialQty: " + m3);

//		String saveDir = request.getSession().getServletContext().getRealPath("/");
//		saveDir += "img";
//		System.out.println("saveDir :" + saveDir);
//		long size = 0;
//		if (filelists != null) {
//			size = filelists.size();
//		}
//
//		// 파일 처리
//		// MultipartFile f = rboard.getFile();
//		for (MultipartFile multipartFile : filelists) {
//			String fileName = "";
//			if (!multipartFile.isEmpty()) {
//				String oriFileName = multipartFile.getOriginalFilename(); // 파일 이름 얻어오기
//				System.out.println("oriFileName : " + oriFileName);
//				UUID uuid = UUID.randomUUID();
//				fileName = uuid + "_" + oriFileName;
//				multipartFile.transferTo(new File(saveDir + fileName));
//
//				RboardFile rf = new RboardFile();
//				rf.setRboard(rboard);
//				rf.setOrigFilename(oriFileName);
//				rf.setFilename(fileName);
//				rf.setFilePath(saveDir);
//				rf.setRboardImg(multipartFile.getBytes());
//				rboardFileService.saveFile(rf);
//			}
//		} // 파일처리 끝
		Rboard rboard = new Rboard();
		rboard.setTitle(rboardDto.getTitle());
		rboard.setIntro(rboardDto.getIntro());
		// rboard.setRbomatlists(rboardDto.getMaterialQty());
		rboard.setCookingTime(rboardDto.getCookingTime());
		rboard.setHowMany(rboardDto.getHowMany());
		rboard.setDifficulty(rboardDto.getDifficulty());

		System.out.println(rboardDto);
//		for (Material material : materials) {
//			rboardService.RboMatInsert(rboard, material);
//		}
//
//		User user = principal.getUser();
//		System.out.println(principal.getUser().getUsername());
		rboardService.RboardInsert(rboard, principal.getUser());
		return "redirect:/";
	}

	@GetMapping("list") // 레시피 목록 가져오기
	public String list(Model model) {
		model.addAttribute("rboardlist", rboardService.list());
		return "rboard/home";
	}

	// 레시피 수정, 시큐리티 적용 필요
	@GetMapping("user/update/{rboardid}")
	public String RboardUpdate(Model model, @PathVariable Long rboardid) {
		model.addAttribute("rboard", rboardService.findById(rboardid));
		return "rboard/update";
	}

	@PutMapping("user/update/{rboardid}")
	@ResponseBody
	public String RboardUpdate(@PathVariable Long rboardid, @RequestBody Rboard rboard) {
		rboardService.RboardUpdate(rboard);
		return "success";
	}

	// 레시피 삭제
	@DeleteMapping("user/delete/{rboardid}")
	@ResponseBody
	public String RboardDelete(@PathVariable Long rboardid) {
		rboardService.delete(rboardid);
		return "success";
	}

}
