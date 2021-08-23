package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace="mappers.memberMapper";
	String statement;
	
	public MemberDTO memPerInfo(String memId) {//회원 상세정보
		System.out.println(memId);
		statement = namespace = ".memInfo";
		return sqlSession.selectOne(statement, memId);
	}
	
	public void memInsert(MemberDTO dto) {//회원가입
		statement = namespace + ".memInsert";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i+"명의 회원이 가입되었습니다.");
		
	}

}
