package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;
import Model.FaqDTO;
import Model.MemberDTO;
import Model.TutorDTO;

public class EmployeeRepository {
@Autowired
SqlSession sqlSession;
String namespace="mappers.employeeMapper";
String statement;

//관리자,내정보
public EmployeeDTO empInfo(String empId) {//관리자 정보, 내정보
	statement = namespace + ".empInfo";
	return sqlSession.selectOne(statement,empId);
}
public List<EmployeeDTO> empList() {//관리자 리스트
	statement = namespace + ".empList";
	return sqlSession.selectList(statement);
}
public void empInsert(EmployeeDTO dto) {//관리자 등록
	statement = namespace + ".empInsert";
	int i = sqlSession.insert(statement,dto);
	System.out.println(i+"명의 관리자가 등록되었습니다.");
}
public void empDel(String empId) {//관리자 삭제
	statement = namespace + ".empDel";
	int i = sqlSession.delete(statement,empId);
	System.out.println(i+"명의 관리자가 삭제되었습니다.");
}
public void empUpdate(EmployeeDTO dto) {//관리자 수정
	statement = namespace + ".empUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"개의 관리자 정보를 수정하였습니다.");
}
public void empPwUpdate(EmployeeDTO dto){//관리자 pw변경, 내 pw변경
	statement = namespace + ".empPwUpdate";
	int i = sqlSession.update(statement,dto);
	System.out.println(i+"개의 pw를 변경하였습니다.");
}
public void myInfoUpdate(EmployeeDTO dto) {//내 정보 수정
	statement = namespace + ".myInfoUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"_내 정보를 수정하였습니다.");
}

//튜터
public List<TutorDTO> tutorList(){//튜터리스트
	statement = namespace + ".tutorList";
	return sqlSession.selectList(statement);
}
public TutorDTO tutorInfo(String tutorId) {//튜터정보
	statement = namespace + ".tutorInfo";
	return sqlSession.selectOne(statement,tutorId);
}
public TutorDTO tutorProfile(String tutorId) {//튜터프로필
	statement = namespace + ".tutorProfile";
	return sqlSession.selectOne(statement,tutorId);
}
public void tutorDel(String tutorId) {
	statement = namespace + ".tutorDel";
	int i = sqlSession.delete(statement,tutorId);
	System.out.println(i+"명의 튜터가 삭제되었습니다.");
}

//멤버
public List<MemberDTO> memList(){//멤버리스트
	statement = namespace + ".memList";
	return sqlSession.selectList(statement);
}
public MemberDTO memInfo(String memId) {//회원정보
	statement = namespace + ".memInfo";
	return sqlSession.selectOne(statement,memId);
}
public void memDel(String memId) {
	statement = namespace + ".memDel";
	int i = sqlSession.delete(statement,memId);
	System.out.println(i+"명의 회원이 삭제되었습니다.");
}

//게시판
public List<FaqDTO> boardList(){//멤버리스트
	statement = namespace + ".boardList";
	return sqlSession.selectList(statement);
}
}
