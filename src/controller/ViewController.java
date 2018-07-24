package controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/page")
public class ViewController { 
	//----------------common-----------------------
	
	//로그인 페이지 요청
	@RequestMapping("loginForm")
	public String loginForm() {
		return "loginForm";
	}
	//메인 페이지 요청
	@RequestMapping("/mainForm")
	public String main() {
		return "main1";
	}

	//----------------board------------------------
	
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
	public String board_event_view() {
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

	//----------------mail-------------------------

	//전자메일 메인화면으로 이동	
	@RequestMapping("/mail_main_form")	
	public String mailMainForm(){	
		System.out.println("mail_main_form");
		return"mail_main";
	}	
	//받은편지함으로 이동	
	@RequestMapping("/mail_receiveInbox_form")	
	public String mailReceiveForm(){	
		System.out.println("mail_receiveInbox");
		return"mail_receiveInbox";
	}	
	//받은편지함 상세보기로 이동	
	@RequestMapping("/mail_receiveInbox_view_form")	
	public String mailReceiveViewForm(){	
		System.out.println("mail_receiveInbox_view_form");
		return"mail_receiveInbox_view";
	}	
	//보낸편지함으로 이동	
	@RequestMapping("/mail_sendInbox_form")	
	public String mailSendForm(){	
		System.out.println("mail_sendInbox_form");
		return"mail_sendInbox";
	}	
	//보내편지함 상세보기로 이동	
	@RequestMapping("/mail_sendInbox_view_form")	
	public String mailSendviewForm(){	
		System.out.println("mail_sendInbox_view_form");
		return"mail_sendInbox_view";
	}	
	//내게쓰기로 이동	
	@RequestMapping("/mail_myWriteInbox_form")	
	public String mailmyWriteViewForm(){	
		System.out.println("mail_mywriteInbox_form");
		return"mail_myWriteInbox";
	}	
	//내게쓰기 상세보기로 이동	
	@RequestMapping("/mail_myWriteInbox_view_form")	
	public String mailmyWriteForm(){	
		System.out.println("mail_myWriteInbox_view_form");
		return"mail_myWriteInbox_view";
	}	
	//임시저장함으로 이동	
	@RequestMapping("/mail_draftsInbox_form")	
	public String maildraftsInboxForm(){	
		System.out.println("mail_draftsInbox_form");
		return"mail_draftsInbox";
	}	
	//임시저장함 상세보기로 이동	
	@RequestMapping("/mail_draftsInbox_view_form")	
	public String mail_draftsInbox_view_form(){	
		System.out.println("mail_draftsInbox_view_form");
		return"mail_draftsInbox";
	}	
	//메일쓰기로 이동	
	@RequestMapping("/mail_Write_form")	
	public String mailWriteForm(){	
		System.out.println("mail_Write_form");
		return"mail_write";
	}	
	//내게쓰기로 이동	
	@RequestMapping("/mail_myWrite_form")	
	public String mailMyWriteForm(){	
		System.out.println("mail_myWrite_form");
		return"mail_myWrite";
	}	
	//휴지통으로 이동	
	@RequestMapping("/mail_deleteInbox_form")	
	public String mail_deleteInbox_form(){	
		System.out.println("mail_deleteInbox_form");
		return"mail_deleteInbox";
	}	
	//휴지통 상세보기로 이동	
	@RequestMapping("/mail_deleteInbox_view_form")	
	public String mail_deleteInbox_view_form(){	
		System.out.println("mail_deleteInbox_view_form");
		return"mail_deleteInbox_view";
	}	
	//비우기 버튼 누를시 팝업창	
	@RequestMapping("/mail_delete_notice_form")	
	public String mail_delete_notice_form(){	
		System.out.println("mail_delete_notice_form");
		return"delete_notice";
	}	
	//전달	
	@RequestMapping("/mail_relay_form")	
	public String mail_relay_form(){	
		System.out.println("mail_relay_form");
		return"mail_relay";
	}	
	//답장	
	@RequestMapping("/mail_reply_form")	
	public String mail_reply_form(){	
		System.out.println("mail_reply_form");
		return"mail_reply";
	}	

	//--------------approval----------------------

	@RequestMapping("/approvalMainForm") // 결재 메인 페이지 요청
	public String appMain() {
		return "approvStore";
	}
	@RequestMapping("/empModifyForm") // 사원정보 수정페이지 요청
	public String empModiForm() {
		return "empModifyForm";
	}
	@RequestMapping("/approvalWriteMain") // 결재작성 메인페이지 요청
	public String appWriteMainForm() {
		return "approvWriteMain";
	}
	@RequestMapping("/approvalStore") // 결재함페이지 요청
	public String appStore() {
		return "approvStore";
	}
	@RequestMapping("/denyDocForm") // 반려 결재함페이지 요청
	public String denyDoc() {
		return "denyApprovList";
	}
	@RequestMapping("/curDocForm")   // 진행중 결재함페이지 요청
	public String curDoc() {
		return "currentApprovList";
	}
	@RequestMapping("/comDocForm") // 완료 결재함페이지 요청
	public String comDoc() {
		return "completeApprovList";
	}
	@RequestMapping("/empManageForm") // 사원 관리페이지 요청
	public String empManageForm() {
		return "empManageForm";
	}
	@RequestMapping("/empChartForm") // 조직도 요청
	public String empChart() {
		return "empChart";
	}
	@RequestMapping("/empList")
	public String empListForm() { // 사원목록 페이지 요청
		return "empListForm";
	}
	@RequestMapping("/reqDoc") // 결재문서 요청
	public String approvDoc(String docType) {
		String docName = "";
		System.out.println(docType);
		if(docType.equals("kian")) {
			docName = "draftingPaper";
		} else if(docType.equals("spend")) {
			docName = "disbursePaper";
		} else if(docType.equals("vac")) {
			docName = "vacationPaper";
		}
		return docName;
	}

	//---------------messenger----------------------

	//메신저 메인 페이지 요청
	@RequestMapping("/messengerMain")
	public String messengerMainForm() {
		return "messengerMain";
	}
	//내 채팅방 목록 페이지 요청
	@RequestMapping("/chatList")
	public String chatListForm() {
		return "chatList";
	}
	//쪽지 작성 페이지 요청
	@RequestMapping("/messageWriteForm")
	public String messageWriteForm() {
		return "messageWrite";
	}
	//쪽지 페이지 조건부 요청
	@RequestMapping("/messageFormByCondition")
	public String messageFormByCondition(@RequestParam String key) {
		if(key.equals("send")) {
			return "messageSend";
		}else if(key.equals("delete")) {
			return "messageDelete";
		}else {
			//받은 쪽지함이 메인 페이지.
			return "messengerMain";
		}
	}
	//채팅 페이지 조건부 요청
	@RequestMapping("/chatFormByCondition")
	public String chatFormByCondition(@RequestParam String key) {
		if(key.equals("invite")) {
			return "chatInvite";
		}else if(key.equals("add")) {
			return "chatRoomAdd";
		}else {
			return "chatMain";
		}
	}
	//채팅방 페이지 요청
	@RequestMapping("/openChatRoom")
	public String chatRoom(@RequestParam(defaultValue="") String key) {
		System.out.println(key);
		return "chatRoom";
	}

	//--------------management----------------------	

	//캘린더
	@RequestMapping(value = "/calendar")
	public String calendarForm() {
		return "calendar";
	}
	//차량
	@RequestMapping("/ManagementCar")
	public String managementList(@RequestParam Map<String, Object> calnedar, Model model) {
		return "ManagementCar";
	}
	//차량 예약
	@RequestMapping(value = "/ManagementCarreservation")
	public String managementCarReserVation() {
		return "ManagementCarreservation";
	}
	//차량 예약수정
	@RequestMapping(value = "/ManagementCarmodify")
	public String managementCarModify() {
		return "ManagementCarmodify";
	}
	//회의실
	@RequestMapping(value = "/ManagementRoom")
	public String managementRoom() {
		return "ManagementRoom";
	}
	//회의실 예약
	@RequestMapping(value = "/ManagementRoomreservation")
	public String managementRoomReserVation() {
		return "ManagementRoomreservation";
	}
	//회의실 예약 수정
	@RequestMapping(value = "/ManagementRoommodify")
	public String managementRoomModify() {
		return "ManagementRoommodify";
	}
}