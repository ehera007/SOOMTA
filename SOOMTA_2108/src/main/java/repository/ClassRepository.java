package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.ClassDTO;

public class ClassRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace="mappers.classMapper";
	String statement;
	
	public void classOpen(ClassDTO dto) { //튜터 클래스 등록
		statement = namespace + ".classOpen";
		int i = sqlSession.insert(statement, dto);
		System.out.println(i + "개 입력");
	}
	public String classNo() { //클래스번호 생성
		statement = namespace + ".classNo";
		return sqlSession.selectOne(statement);
	}
	public List<ClassDTO> tutorClassList(String tutorId){ //튜터 마이페이지 클래스 리스트
		statement = namespace + ".tutorClassList";
		return sqlSession.selectList(statement, tutorId);
	}
	
	public ClassDTO classDetail(String classNo) {
		statement = namespace + ".classDetail";
		return sqlSession.selectOne(statement, classNo);
	}
	
	public void classDelete(String classNo) { //튜터 클래스 삭제
		statement = namespace + ".classDelete";
		sqlSession.delete(statement, classNo);
	}
	
	public void classRetouch(ClassDTO dto) {
		statement = namespace + ".classRetouch";
		sqlSession.update(statement, dto);
	}
}
