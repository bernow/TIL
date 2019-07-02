package my.spring.springedu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalcController {
	@RequestMapping("calc")
	public ModelAndView calc(String oper, int num1, int num2) {
		ModelAndView mav = new ModelAndView();
	switch(oper) {
	case "plus":
		mav.addObject("result", num1+num2);
		mav.setViewName("calcResult");
		break;
	case "minus":
		mav.addObject("result", num1-num2);
		mav.setViewName("calcResult");
		break;
	case "multi":
		mav.addObject("result", num1*num2);
		mav.setViewName("calcResult");
		break;
	case "divide":
		if(num2==0) {
			mav.addObject("error", "0을 나눌 수 없습니다");
			mav.setViewName("errorResult");
		}else {
			mav.addObject("result", String.format("%f.2", (double)num1/num2));
			mav.setViewName("calcResult");
		}
		break;
		}
		return mav;
	} 

}

