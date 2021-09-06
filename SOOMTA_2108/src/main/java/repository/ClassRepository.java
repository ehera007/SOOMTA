package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;

import Model.ClassDTO;
import Model.ReviewDTO;
import Model.WishDTO;


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
	
	public ClassDTO classDetail(String classNo) { //클래스 상세보기
		statement = namespace + ".classDetail";
		return sqlSession.selectOne(statement, classNo);
	}
	
	public void classDelete(String classNo) { //튜터 클래스 삭제
		statement = namespace + ".classDelete";
		sqlSession.delete(statement, classNo);
	}
	
	public void classRetouch(ClassDTO dto) { //클래스 수정
		statement = namespace + ".classRetouch";
		sqlSession.update(statement, dto);
	}
	
	public int classCount(String tutorId) { //클래스 생성 수
		statement = namespace + ".classCount";
		return sqlSession.selectOne(statement, tutorId);
	}
	public List<ClassDTO> classList(String classCategoryS ){ //메인 클래스 리스트
		statement = namespace + ".classList";
		return sqlSession.selectList(statement, classCategoryS);
	}
	public ClassDTO classDetailPage(String classNo) {
		System.out.println(classNo);
		statement = namespace + ".classDetailPage";
		return sqlSession.selectOne(statement, classNo);
	}
	public void classWish(WishDTO dto) {
		statement = namespace + ".classWish";
		sqlSession.insert(statement, dto);
	}
	
	public int wishChk(WishDTO dto) {
		statement = namespace + ".wishChk";
		return sqlSession.selectOne(statement, dto);
	}
	public void wishDel(WishDTO dto) {
		statement = namespace + ".wishDel";
		sqlSession.delete(statement, dto);
	}
	public List<WishDTO> wishClass(String memId) {
		statement = namespace + ".wishClass";
		return sqlSession.selectList(statement, memId);
	}
	public List<ReviewDTO> reviewViewList(String classNo) {
		statement = namespace + ".reviewViewList";
		return sqlSession.selectList(statement, classNo);
	}
	public int reviewCount(String classNo) {
		statement = namespace + ".reviewCount";
		return sqlSession.selectOne(statement, classNo);
	}
	public double classSatisfyCount(String classNo) {
		statement = namespace + ".classSatisfyCount";
		return sqlSession.selectOne(statement, classNo);
	}
	public double tutorSatisfyCount(String classNo) {
		statement = namespace + ".tutorSatisfyCount";
		return sqlSession.selectOne(statement, classNo);
	}
	public double tutorSatisTfyAllCount(String tutorId) {
		statement = namespace + ".tutorSatisTfyAllCount";
		return sqlSession.selectOne(statement, tutorId);
	}
	
}
