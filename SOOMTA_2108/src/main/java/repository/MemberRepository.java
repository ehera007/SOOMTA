package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;
import Model.PurchaseDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace="mappers.memberMapper";
	String statement;
	
	public void memOut(String memId) {//회원 탈퇴
		statement = namespace + ".memOut";
		sqlSession.delete(statement, memId);
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
	
	public void memUpdate(MemberDTO dto) {//회원 수정
		statement = namespace +".memUpdate"; 
		int i = sqlSession.update(statement,dto);
		System.out.println(i+"개 수정");
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
