package my.spring.springedu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.MemberVO;

@Controller
public class MemberController {
	@RequestMapping(value="/member", method=RequestMethod.POST)
	public ModelAndView member(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		String name = vo.getName();
		String number = vo.getNumber();
		String id = vo.getId();
		String pw = vo.getPw();		
		
		/*
		 * vo.setName(name == ""?"없음" : name); vo.setNumber(number == ""?"없음" : number);
		 * vo.setId(id == ""?"없음" : id); vo.setPw(pw == ""?"없음" : pw);
		 */
		  
		  if(vo.getName().equals("")) vo.setName("없음");
		  if(vo.getNumber().equals("")) vo.setNumber("없음");
		  if(vo.getId().equals("")) vo.setId("없음");
		  if(vo.getPw().equals("")) vo.setPw("없음");
		  mav.addObject("result", vo);
		  mav.setViewName("memberView");
		 
		
		/*
		 * if(name.isEmpty()) { vo.setName("없음"); }else { vo.setName(name); }
		 * 
		 * if(number.isEmpty()) { vo.setNumber("����"); }else { vo.setNumber(number); }
		 * 
		 * if(id.isEmpty()) { vo.setId("����"); }else { vo.setId(id); }
		 * 
		 * if(pw.isEmpty()) { vo.setPw("����"); }else { vo.setPw(pw); }
		 */
	return mav;	
	}
	
}
