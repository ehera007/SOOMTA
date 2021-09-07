package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.ClassDTO;
import Model.ClassOrderDTO;
import Model.MemberDTO;
import Model.PurchaseDTO;
import Model.ReviewDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace="mappers.memberMapper";
	String statement;
	
	public void classDel(String purchaseNo) {
		statement = namespace + ".classDel";
		int i = sqlSession.delete(statement,purchaseNo);
		System.out.println("번호 : "+purchaseNo);
		System.out.println(i+"개 클래스가 삭제되었습니다.");
	}
	
	
	public int memClassCount(String memId) { //맴버 클래스 생성 수
		statement = namespace + ".memClassCount";
		return sqlSession.selectOne(statement, memId);
	}
	
	public void reviewWrite(ReviewDTO dto) {
		System.out.println("dto.getTutorId() : " + dto.getTutorId());
		statement = namespace + ".reviewWrite";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i+"개 리뷰 작성.");
	}
	
	public ClassOrderDTO classCon(String classNo) {//클래스 정보
		statement = namespace + ".classCon";
		return sqlSession.selectOne(statement,classNo);
	}
	public List<ClassOrderDTO> classOrderList(String memId){//내 클래스 리스트
		statement = namespace + ".classOrderList";
		return sqlSession.selectList(statement, memId);
	}
	public void memOut(String memId) {//회원 탈퇴
		statement = namespace + ".memOut";
		sqlSession.delete(statement, memId);
	}
	
	public ReviewDTO reviewCon(String purchaseNo) {
		statement = namespace + ".reviewCon";
		System.out.println(purchaseNo);
		return sqlSession.selectOne(statement, purchaseNo);
	}
	public void memUpdate(MemberDTO dto) {//회원 수정
		statement = namespace +".memUpdate"; 
		int i = sqlSession.update(statement,dto);
		System.out.println(i+"개 수정");
	}
	
	public MemberDTO perData(String memId) {//회원 상세정보/수정
		statement = namespace + ".perData";
		return sqlSession.selectOne(statement, memId);
	}
	
	public void memInsert(MemberDTO dto) {//회원가입
		statement = namespace + ".memInsert";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i+"명의 회원이 가입되었습니다.");
	}
	
	public void memPwUpdate(MemberDTO dto) {//비밀번호 변경
		statement = namespace +".memPwUpdate";
		int i = sqlSession.update(statement,dto);
		System.out.println(i+"명의 비밀번호가 변경되었습니다");
	}
	
	
	public String purchaseNo() { //구매번호 생성
		statement = namespace + ".purchaseNo";
		return sqlSession.selectOne(statement);
	}
	
	public void purchaseInsert(PurchaseDTO dto) {
		statement = namespace + ".purchaseInsert";
		sqlSession.insert(statement, dto);
	}
}
