package my.spring.springedu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.MemberVO;

@Controller
public class MemberController {
	@RequestMapping(value="/member", method=RequestMethod.POST)
	public String member(@ModelAttribute ("result") MemberVO vo) {			  
		  if(vo.getName().equals("")) vo.setName("없음");
		  if(vo.getNumber().equals("")) vo.setNumber("없음");
		  if(vo.getId().equals("")) vo.setId("없음");
		  if(vo.getPw().equals("")) vo.setPw("없음");	
		/*
		 * if(name.isEmpty()) { vo.setName("없음"); }else { vo.setName(name); }
		 * 
		 * if(number.isEmpty()) { vo.setNumber("없음"); }else { vo.setNumber(number); }
		 * 
		 * if(id.isEmpty()) { vo.setId("없음"); }else { vo.setId(id); }
		 * 
		 * if(pw.isEmpty()) { vo.setPw("없음"); }else { vo.setPw(pw); }
		 */
	return "memberView";	
	}
	
}
