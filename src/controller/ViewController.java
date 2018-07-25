package controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class ViewController {
	//----------------common-----------------------
	
	//로그인 페이지 요청
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	//메인 페이지 요청
	@RequestMapping("/mainForm")
	public String main() {
		return "main1";
	}
}