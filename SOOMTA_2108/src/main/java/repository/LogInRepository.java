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
	public Integer idCheck(String id) {
		statement = namespace + ".idCheck";
		return sqlSession.selectOne(statement, id); 
	}
	public Integer emailCheck(String email) {
		statement = namespace + ".emailCheck";
		return sqlSession.selectOne(statement, email);
	}
	public Integer emailCheckM(String emailM) {
		statement = namespace + ".emailCheckM";
		return sqlSession.selectOne(statement, emailM);
	}
	public Integer emailCheckE(String email) {
		statement = namespace + ".emailCheckE";
		return sqlSession.selectOne(statement, email);
	} 
	

}
