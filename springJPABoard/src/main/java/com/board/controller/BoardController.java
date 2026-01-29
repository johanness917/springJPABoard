package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Board;
import com.board.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;

	@GetMapping("/insertForm")
	public String boardInsertForm(Model model) {
		return "board/insertForm";
	}

	@PostMapping("/insert")
	public String boardInsert(Board board, Model model) {
		log.info("insert board=" + board.toString());
		try {
			int count = boardService.register(board);
			if (count > 0) {
				model.addAttribute("message", "%s 님의 게시판이 등록 되었습니다.".formatted(board.getWriter()));
				return "board/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%s 님 게시판 등록 실패.".formatted(board.getWriter()));
		return "board/failed";
	}

	@GetMapping("/boardList") // 오타 수정
	public String boardList(Model model) {
	    log.info("boardList");
	    try {
	        List<Board> boardList = boardService.list();
	        model.addAttribute("boardList", boardList); // 이름 일치 시킴
	    } catch (Exception e) {
	        log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
	        return "boardList"; // 에러 발생 시 에러 페이지로 유도
	    }
	    return "board/boardList"; // 실제 파일명과 매칭
	}
	
	@GetMapping("/detail") // 오타 수정
	public String boardDetail(Board b, Model model) {
	    log.info("boardDetail board="+b.toString());
	    try {
	        Board board = boardService.read(b);
	        if (board == null) {
	        	model.addAttribute("message", "%d 님의 상세정보가 없습니다.".formatted(board.getNo()));
				return "board/failed";
			}
	        model.addAttribute("board", board); // 이름 일치 시킴
	    } catch (Exception e) {
	        log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
	        return "boardList"; // 에러 발생 시 에러 페이지로 유도
	    }
	    return "board/detail"; // 실제 파일명과 매칭
	}
	
	@GetMapping("/delete") // 오타 수정
	public String boardDelete(Board board, Model model) {
		log.info("boardDelete board="+board.toString());
		try {
			int count = boardService.remove(board);
			if (count > 0) {
				model.addAttribute("message", "%d 님의 정보가 삭제되었습니다.".formatted(board.getNo()));
				return "board/success";
			}
		} catch (Exception e) {
			log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
			return "boardList"; // 에러 발생 시 에러 페이지로 유도
		}
		model.addAttribute("message", "%d 님의 정보가 삭제 실패.".formatted(board.getNo()));
		return "board/failed"; // 실제 파일명과 매칭
	}
	
	@GetMapping("/updateForm") // 오타 수정
	public String boardUpdateForm(Board b, Model model) {
		log.info("boardUpdateForm board="+b.toString());
		try {
			Board board = boardService.read(b);
			if (board == null) {
				model.addAttribute("message", "%d 님의 정보가 없습니다.".formatted(board.getNo()));
				return "board/failed";
			}
			model.addAttribute("board", board);
		} catch (Exception e) {
			log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
			return "boardList"; // 에러 발생 시 에러 페이지로 유도
		}
		return "board/updateForm"; // 실제 파일명과 매칭
	}
	
	@PostMapping("/update") // 오타 수정
	public String boardUpdate(Board b, Model model) {
		log.info("boardUpdate board="+b.toString());
		try {
			int count = boardService.modify(b);
			if (count > 0) {
				model.addAttribute("message", "%s 게시판 수정 성공 했습니다.".formatted(b.getWriter()));
				return "board/success";
			}
			model.addAttribute("board", b);
		} catch (Exception e) {
			log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
			return "boardList"; // 에러 발생 시 에러 페이지로 유도
		}
		model.addAttribute("message", "%s 게시판 수정 실패.".formatted(b.getWriter()));
		return "board/failed"; // 실제 파일명과 매칭
	}
	
	@GetMapping("/search") // 오타 수정
	public String boardSearch(String searchType, String keyword, Model model) {
	    log.info("boardSearch searchType= %s keyword=%s".formatted(searchType, keyword));
	    try {
	        List<Board> boardList = boardService.search(searchType, keyword);
	        model.addAttribute("boardList", boardList); // 이름 일치 시킴
	    } catch (Exception e) {
	        log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
	        return "boardList"; // 에러 발생 시 에러 페이지로 유도
	    }
	    return "board/boardList"; // 실제 파일명과 매칭
	}
	
}