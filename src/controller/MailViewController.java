package controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/mail")
public class MailViewController { 

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

}