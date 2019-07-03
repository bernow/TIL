package my.spring.springedu;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import vo.ProductVO;

@Controller
@SessionAttributes("product")
public class ProductController {
	@ModelAttribute("product")
	public ProductVO countMethod() {
		return new ProductVO();
	}

	@RequestMapping(value = "/product")
	public String handle(@ModelAttribute("product") ProductVO vo, String pid) {
		if (pid.equals("p001")) {
			vo.setApple(1);
		} else if (pid.equals("p002")) {
			vo.setBanana(2);
		} else if (pid.equals("p003")) {
			vo.setOrange(3);
		}
		return "productView";
	}

	@RequestMapping(value = "/product/reset", produces = "application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String, String> test2(SessionStatus s) {
		HashMap<String, String> map = new HashMap<String, String>();
		s.setComplete();
		map.put("msg", "장바구니가 비워졌어요!!");
		return map;
	}

}
