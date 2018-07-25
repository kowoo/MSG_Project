package controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/management")
public class ManagementController {

	@RequestMapping(value = "/calendar")
	public String calendarForm() {
		return "calendar";
	}
	
	
	
	@RequestMapping("/managementCar")
	public String managementList(@RequestParam Map<String, Object> calnedar, Model model) {
		
		return "managementCar";
	}
	

	@RequestMapping(value = "/managementCarreservation")
	public String managementCarReserVation() {
		return "managementCarreservation";
	}

	@RequestMapping(value = "/managementCarmodify")
	public String managementCarModify() {
		return "managementCarmodify";
	}

	@RequestMapping(value = "/managementRoom")
	public String managementRoom() {
		return "managementRoom";
	}

	@RequestMapping(value = "/managementRoomreservation")
	public String managementRoomReserVation() {
		return "managementRoomreservation";
	}

	@RequestMapping(value = "/managementRoommodify")
	public String managementRoomModify() {
		return "managementRoommodify";
	}

}
