package controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/chat")
public class ChatController {
	
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
}
