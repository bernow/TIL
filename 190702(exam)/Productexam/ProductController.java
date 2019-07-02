package my.spring.springedu;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import vo.ProductVO;

@Controller
@SessionAttributes({"product1","product2","product3"})
public class ProductController {
	@ModelAttribute("product1")
	public ProductVO countMethod1() {
		return new ProductVO();
	}
	@ModelAttribute("product2")
	public ProductVO countMethod2() {
		return new ProductVO();
	}
	@ModelAttribute("product3")
	public ProductVO countMethod3() {
		return new ProductVO();
	}
	@RequestMapping(value="/product")
	public String handle(@ModelAttribute("product1")ProductVO vo1,
						 @ModelAttribute("product2")ProductVO vo2,
						 @ModelAttribute("product3")ProductVO vo3,
						 SessionStatus s, HttpServletRequest request) {
	
		String pid = request.getParameter("pid");
		if (pid == null) {
			s.setComplete();
			return "reset";
		} else {
			if (pid.equals("p001")) {
				vo1.setApple();
			} else if (pid.equals("p002")) {
				vo2.setBanana();
			} else if (pid.equals("p003")) {
				vo3.setOrange();
			}
	
		}
		return "productView";
	}

}
