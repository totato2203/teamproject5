package teamproject5.a01_Jangho.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import teamproject5.a01_Jangho.a02_Service.JanghoService;
import teamproject5.a01_Jangho.a04_VO.FreeBoard;

@Controller
public class JanghoController {
	@Autowired(required = false)
	private JanghoService service;
	
	// http://localhost:7080/teamproject5/freeBoardList.do
	@RequestMapping("freeBoardList.do")
	public String getFreeBoardList(FreeBoard sch, Model d) {
		d.addAttribute("freeBoardList", service.getFreeBoardList(sch));
		return "WEB-INF\\views\\Jangho01_freeBoardList.jsp";
	}
	
	@RequestMapping("freeBoardInsertForm.do")
	public String freeBoardInsertForm() {
		return "WEB-INF\\views\\Jangho02_freeBoardInsert.jsp";
	}
	
	@RequestMapping("freeBoardInsert.do")
	public String freeBoardInsert(FreeBoard ins, Model d) {
		service.insertFreeBoard(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\Jangho02_freeBoardInsert.jsp";
	}

}