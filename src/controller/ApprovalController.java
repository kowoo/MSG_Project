package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ApprovalService;

@Controller
@RequestMapping("/approval")
public class ApprovalController {
	@Autowired
	private ApprovalService service;
	
	
	//--------------approval----------------------

	@RequestMapping("/approvalMainForm") // 결재 메인 페이지 요청
	public String appMain() {
		return "approvStore";
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
	
	@RequestMapping("/reqDoc") // 결재문서 요청
	public String approvDoc(String docType, Model model) {
		String docName = "";

//		model.addAttribute("data", service.getDocHeaderInfo(docType));
//		if(docType.equals("kian")) {
//			docName = "draftingPaper";
//		} else if(docType.equals("spend")) {
//			docName = "disbursePaper";
//		} else if(docType.equals("vac")) {
//			docName = "vacationPaper";
//		}
		return docName;
	}
}
