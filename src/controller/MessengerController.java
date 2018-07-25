package controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/messenger")
public class MessengerController {

	//메신저 메인 페이지 요청
	@RequestMapping("/main")
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
	
	
	////////////////////////////미완//////////////////////////
	@RequestMapping("/addChatRoom")
	public String addChatRoom(@RequestParam String title) {
		System.out.println("채팅방 만들기");
		System.out.println(title);
		//
		//채팅방 만들고, 만든 채팅방을 참여 중인 채팅방 목록에 추가 한 뒤
		//채팅방 목록으로 리턴.
		//
		return "chatList";
	}
	@RequestMapping("/addMessage")
	public String addMessage(Map<String, Object> msg) {
		System.out.println("addMessage");
		System.out.println(msg);
		return "messengerMain";
	}
	@RequestMapping("/deleteMessage")
	public String deleteMessage(Map<String, Object> msg) {
		System.out.println("deleteMessage");
		System.out.println(msg);
		return "messengerMain";
	}
	@RequestMapping("/updateMessage")
	public String updateMessage(Map<String, Object> msg) {
		System.out.println("updateMessage");
		System.out.println(msg);
		return "messengerMain";
	}
	@RequestMapping("/selectMessage")
	public String selectMessage(Map<String, Object> msg) {
		System.out.println("selectMessage");
		System.out.println(msg);
		return "messengerMain";
	}
	@RequestMapping("/selectMessageByCondition")
	public String selectMessageByCondition(Map<String, Object> msg) {
		System.out.println("messageWrite");
		System.out.println(msg);
		return "messengerMain";
	}
}
