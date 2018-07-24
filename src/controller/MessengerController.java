package controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/msg")
public class MessengerController {

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
