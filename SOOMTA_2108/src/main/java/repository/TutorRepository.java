package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.TutorDTO;

public class TutorRepository {
	@Autowired
	SqlSession sqlSession;

	String namespace="mappers.tutorMapper";
	String statement;

	public void tutorInsert(TutorDTO dto) {//튜터등록
		statement = namespace + ".tutorInsert";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i+"명의 튜터가 등록되었습니다.");
	}

}
