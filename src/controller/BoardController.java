package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController { 

	
	//게시판 메인 페이지 요청
	@RequestMapping("/boardMainForm")
	public String boardMainForm() {
		return "boardMainForm";
	}
	//공지사항 페이지 요청
	@RequestMapping("/boardNotice")
	public String boardNotice() {
		return "boardNotice";
	}
	//공지사항 글쓰기 페이지 요청
	@RequestMapping("/boardNoticeWriteForm")
	public String boardNoticeWriteForm() {
		return "boardNoticeWriteForm";
	}
	//공지사항 수정 페이지 요청
	@RequestMapping("/boardNoticeModifyForm")
	public String boardNoticeModifyForm() {
		return "boardNoticeModifyForm";
	}
	//공지사항 상세보기 페이지 요청
	@RequestMapping("/boardNoticeViewForm")
	public String boardNoticeViewForm() {
		return "boardNoticeViewForm";
	}
	//이벤트 게시판 페이지 요청
	@RequestMapping("/boardEvent")
	public String boardEvent() {
		return "boardEvent";
	}
	//이벤트 게시판 글쓰기 페이지 요청
	@RequestMapping("/boardEventWriteForm")
	public String boardEventWriteForm() {
		return "boardEventWriteForm";
	}
	//이벤트 게시판 수정 페이지 요청
	@RequestMapping("/boardEventModifyForm")
	public String boardEventModifyForm() {
		return "boardEventModifyForm";
	}
	//이벤트 게시판 상세보기 페이지 요청
	@RequestMapping("/boardEventViewForm")
	public String boardEventViewForm() {
		return "boardEventViewForm";
	}
	//부서 게시판 페이지 요청
	@RequestMapping("/boardDept")
	public String boardDept() {
		return "boardDept";
	}
	//부서 게시판 글쓰기 페이지 요청
	@RequestMapping("/boardDeptWriteForm")
	public String boardDeptWriteForm() {
		return "boardDeptWriteForm";
	}
	//부서 게시판 수정 페이지 요청
	@RequestMapping("/boardDeptModifyForm")
	public String board_dept_modify() {
		return "boardDeptModifyForm";
	}
	//IT부서 게시판 페이지 요청
	@RequestMapping("/boardDeptIt")
	public String boardDeptIt() {
		return "boardDeptIt";
	}
	//
	@RequestMapping("/boardDeptBP")
	public String boardDeptBP() {
		return "boardDeptBP";
	}
	//
	@RequestMapping("/boardDeptMin")
	public String boardDeptMin() {
		return "boardDeptMin";
	}
	//영업부서 게시판 페이지 요청
	@RequestMapping("/boardDeptSales")
	public String boardDeptSales() {
		return "boardDeptSales";
	}
	//
	@RequestMapping("/boardDeptView")
	public String boardDeptView() {
		return "boardDeptView";
	}
	//프로젝트 게시판 페이지 요청
	@RequestMapping("/boardProject")
	public String boardProject() {
		return "boardProject";
	}
	//
	@RequestMapping("/boardProjectOngoing")
	public String boardProjectOngoing() {
		return "boardProjectOngoing";
	}
	//
	@RequestMapping("/boardProjectFinished")
	public String boardProjectFinished() {
		return "boardProjectFinished";
	}
	//프로젝트 게시판 글쓰기 페이지 요청
	@RequestMapping("/boardProjectWriteForm")
	public String boardProjectWriteForm() {
		return "boardProjectWriteForm";
	}
	//프로젝트 게시판 상세보기 페이지 요청
	@RequestMapping("/boardProjectViewForm")
	public String boardProjectViewForm() {
		return "boardProjectViewForm";
	}
	//프로젝트 게시판 수정 페이지 요청
	@RequestMapping("/boardProjectModifyForm")
	public String boardProjectModifyForm() {
		return "boardProjectModifyForm";
	}


}