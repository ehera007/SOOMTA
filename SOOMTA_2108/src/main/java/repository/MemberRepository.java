package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;

	String namespace="mappers.memberMapper";
	String statement;
	
	public void memInsert(MemberDTO dto) {//회원가입
		statement = namespace + ".memInsert";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i+"명의 회원이 가입되었습니다.");
		
	}

}
