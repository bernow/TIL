package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UsersVO;

@Repository
public class LogDAO {
	@Autowired
	SqlSession session = null;

	public UsersVO log(UsersVO vo) {
		UsersVO userVO = null;
		String statement = "resource.LoginMapper.login";
		userVO = session.selectOne(statement, vo);
		return userVO;
	}

}
