package my.spring.springedu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.LoginService;
import vo.LoginVO;
import vo.ResultVO;

@Controller
public class LoginConreoller {
	@Autowired
	LoginService ls;

	@RequestMapping(value = "/login", produces = "application/json; charset=utf-8")

	@ResponseBody
	public ResultVO login(LoginVO vo1) {
		ResultVO vo = new ResultVO();
		boolean result = ls.login(vo1.getId(), vo1.getPasswd());
		if (result == true) {
			vo.setResult("ok");
		} else {
			vo.setResult("fail");
		}
		return vo;
	}
}
