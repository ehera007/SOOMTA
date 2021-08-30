package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;
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
	public void tutorDelete(String tutorId) {//튜터 탈퇴
		statement = namespace +".tutorDelete";
		sqlSession.delete(statement, tutorId);
	}
	public void tutorDel(String tutorId) {//튜터 탈퇴
		statement = namespace +".tutorDelete";
		sqlSession.delete(statement, tutorId);
	}
	public TutorDTO perData(String tutorId) {
		statement = namespace + ".perData";
		return sqlSession.selectOne(statement, tutorId);
	}
	public TutorDTO promanage(String tutorId) {
		statement = namespace + ".promanage";
		return sqlSession.selectOne(statement, tutorId);
	}
	
	public TutorDTO tutorDetail(String tutorId) {
		statement = namespace + ".tutorDetail";
		return sqlSession.selectOne(statement, tutorId);
	}
	public void perDataUpdate(TutorDTO dto) {
		statement = namespace + ".perDataUpdate";
		int i = sqlSession.update(statement, dto);
		System.out.println(i+"_튜터정보를 수정하였습니다.");
	}
	public void promanageSujung(TutorDTO dto) {
		statement = namespace + ".promanageSujung";
		int i = sqlSession.update(statement, dto);
		System.out.println(i+"_튜터 강의 정보를 수정하였습니다.");
	}
	public void pwChange(TutorDTO dto){
		statement = namespace + ".pwChange";
		int i = sqlSession.update(statement,dto);
		System.out.println(i+"개의 pw를 변경하였습니다.");
	}
	
	
	
}
