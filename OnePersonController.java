package my.spring.springedu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.OnePersonDAO;
import vo.OnePersonVO;

@Controller
public class OnePersonController {
	@Autowired
	OnePersonDAO dao;
	
	@RequestMapping("/one")
	ModelAndView one() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("OnePersonView");
		return mav;	
	}
	
	@RequestMapping("/oneperson")
	ModelAndView selectData(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String action = request.getParameter("action");
		String key = request.getParameter("key");
		if(action.equals("order")) {
			List<OnePersonVO> list = dao.ordernum();
			mav.addObject("list1", list);
		}else if(action.equals("grouparea1")) {
			List<OnePersonVO> list = dao.grouparea1();
			mav.addObject("list2", list);
		}else if(action.equals("maxnum12")) {
			OnePersonVO vo = dao.maxnum();
			request.setAttribute("maxnum12", vo);
		}else if(action.equals("maxnum1")) {
			OnePersonVO vo = dao.maxnum();
			request.setAttribute("maxnum1", vo);
		}else if(action.equals("search")) {
			List<OnePersonVO> list = dao.search(key);
			mav.addObject("list3", list);
		}
		mav.setViewName("OnePersonView");
		return mav;	
	}
}
