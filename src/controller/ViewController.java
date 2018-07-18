package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class ViewController {
	
	@RequestMapping("/messengerMainForm")
	public String messengerMainForm() {
		System.out.println("들어옴!");
		return "messengerMain";
	}
	
}
