package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.LogInDTO;
import Model.MemberDTO;
import Model.TutorDTO;

public class LogInRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.logInMapper";
	String statement; 
	public LogInDTO logIn(String userId) {
		statement = namespace + ".logIn";
		return sqlSession.selectOne(statement, userId);
	}
	public String mIdFind(MemberDTO dto) {
		statement = namespace + ".mIdFind";
		return sqlSession.selectOne(statement, dto);
	}
	public String tIdFind(TutorDTO dto1) {
		statement = namespace + ".tIdFind";
		return sqlSession.selectOne(statement, dto1);
	}
	

}
