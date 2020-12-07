package org.zero.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zero.domain.Board_listVO;
import org.zero.domain.Criteria;
import org.zero.domain.PageDTO;
import org.zero.service.Board_listService;

import lombok.extern.log4j.Log4j;

@Controller//각각 페이지 이동
@Log4j
@RequestMapping("/front/*")
public class BoardController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private Board_listService service_list;
	
	//메인 화면
	@GetMapping("/index")
	public void index(Model model) {
		log.info(service_list.getread());
		model.addAttribute("last_board", service_list.getread());
		//model.addAttribute("board_list", service_list.getread());
		//model.addAttribute("board", service_list.getnewList());
		
	}
	//일반 게시판
	@GetMapping("/board_list")
	public void board_list(Criteria cri, Model model){
		log.info("board_list");
		model.addAttribute("board_list", service_list.getList(cri));
		//페이징
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
	}
	
	@GetMapping("/down_load")
	public void download() {
		
	}
	
	@GetMapping("/contact")
	public void contact() {
		
	}
	
	//글 목록 보기
//	@GetMapping("/details")
//	public void details(@RequestParam("num") Long num, @ModelAttribute("cri") Criteria cri, Model model) {
//		log.info("/details");
//		//System.out.printf("board : " + service_list.get(num));
//		model.addAttribute("board_list", service_list.get(num));
//	}
	
	@GetMapping({"/details", "/register"})
	public void details(@RequestParam("num") Long num, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("details page:" +cri.getPageNum() +"amount"+ cri.getAmount());
		//System.out.printf("board : " + service_list.get(num));
		model.addAttribute("board_list", service_list.get(num));
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/join_mem")
	public void join_mem() {
		
	}
//목록 슬 수정
//	@GetMapping("/register")
//	public void register(@RequestParam("num") Long num, Model model){
//		log.info("/register");
//		model.addAttribute("board_list", service_list.get(num));
//	}
	
	//목록 글 수정 
	@PostMapping("/register")
	//@RequestMapping(value="/register", method= {RequestMethod.POST, RequestMethod.GET})
	public String register(Board_listVO board_list, RedirectAttributes rttr){
		log.info("/register" + board_list);
		if(service_list.modify(board_list)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/front/list";
	}

	//글 등록 처리
	@GetMapping("/Writes")
	//@PreAuthorize("isAuthenticated()")
	public void writes() {
		
	}
	
	@PostMapping("/Writes")
	public String writes(Board_listVO board_list, RedirectAttributes rttr) {
		log.info("register: " + board_list);
		
		service_list.register(board_list);
		
		rttr.addFlashAttribute("result", board_list.getNum());
			
		return "redirect:/front/board_list";
		
	}
	
	
	//글 삭제 400오류
	@PostMapping("/remove")
	public String remove(@RequestParam("num") Long num, RedirectAttributes rttr) {
		log.info("remove......." + num);
		if(service_list.remove(num)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/front/board_list";
	}
}
