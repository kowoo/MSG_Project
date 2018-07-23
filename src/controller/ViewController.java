package controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/page")
public class ViewController { 
	@RequestMapping("/main")
	public String main() {
		return "main1";
	}	
	@RequestMapping("/messengerMain")
	public String messengerMainForm() {
		return "messengerMain";
	}
	@RequestMapping("/chatList")
	public String chatListForm() {
		return "chatList";
	}
	@RequestMapping("/messageWriteForm")
	public String messageWriteForm() {
		return "messageWrite";
	}
	@RequestMapping("/messageFormByCondition")
	public String messageFormByCondition(@RequestParam String key) {
		if(key.equals("send")) {
			return "messageSend";
		}else if(key.equals("delete")) {
			return "messageDelete";
		}else {
			return "messengerMain";
		}
	}
	@RequestMapping("/chatFormByCondition")
	public String chatFormByCondition(@RequestParam String key) {
		if(key.equals("invite")) {
			System.out.println("초대");
			return "chatInvite";
		}else if(key.equals("add")) {
			System.out.println("만들기");
			return "chatRoomAdd";
		}else {
			return "chatMain";
		}
	}
//	@RequestMapping("/msg_view")
//	public String selectMessageByCondition(@RequestParam String key) {
//		System.out.println("msg_view");
//		System.out.println(key);
//		return "messageView";
//	}
}