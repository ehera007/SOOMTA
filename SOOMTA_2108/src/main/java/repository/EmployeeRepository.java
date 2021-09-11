package repository;

import java.util.List;
import java.util.Map;

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
public List<EmployeeDTO> empList(EmployeeDTO dto) {//관리자 리스트
	statement = namespace + ".empList";
	return sqlSession.selectList(statement,dto);
}
public void empCkDel(Map<String, Object> condition) {//관리자 일괄 삭제
	statement = namespace + ".empCkDel";
	sqlSession.delete(statement,condition);
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
public int countE() {//관리자 페이지
	statement = namespace + ".countE";
	return sqlSession.selectOne(statement);
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
public void tutorPwUpdate(TutorDTO dto) {//튜터 pw 변경
	statement = namespace + ".tutorPwUpdate";
	int i = sqlSession.update(statement,dto);
	System.out.println(i+"명의 튜터 pw를 변경.");
}
public void tutorUpdate(TutorDTO dto) {//튜터 수정
	statement = namespace + ".tutorUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"개의 튜터 정보 수정.");
}
public void tutorProfileUpdate(TutorDTO dto) {//튜터 프로필 수정
	statement = namespace + ".tutorProfileUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"개의 튜터 프로필 수정.");
}

//멤버
public List<MemberDTO> memList(MemberDTO dto){//멤버리스트
	statement = namespace + ".memList";
	return sqlSession.selectList(statement,dto);
}
public MemberDTO memInfo(String memId) {//회원정보
	statement = namespace + ".memInfo";
	return sqlSession.selectOne(statement,memId);
}
public void memDel(String memId) {//회원삭제
	statement = namespace + ".memDel";
	int i = sqlSession.delete(statement,memId);
	System.out.println(i+"명의 회원이 삭제되었습니다.");
}
public void memPwUpdate(MemberDTO dto){//회원 pw 변경
	statement = namespace + ".memPwUpdate";
	int i = sqlSession.update(statement,dto);
	System.out.println(i+"명의 회원 pw를 변경.");
}
public void memUpdate(MemberDTO dto) {//회원수정
	statement = namespace + ".memUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"개의 회원 정보 수정.");
}
public int countM() {//회원 페이지
	statement = namespace + ".countM";
	return sqlSession.selectOne(statement);
}

//게시판
public List<FaqDTO> boardList(FaqDTO dto){//게시판리스트
	statement = namespace + ".boardList";
	return sqlSession.selectList(statement,dto);
}
public void faqCkDel(Map<String, Object> condition) {//게시판 일괄 삭제
	statement = namespace + ".faqCkDel";
	sqlSession.delete(statement,condition);
}
public int countB() {//게시판 페이지
	statement = namespace + ".countB";
	return sqlSession.selectOne(statement);
}
public Long faqNo(){//게시판작성_번호
	statement = namespace + ".faqNo";
	return sqlSession.selectOne(statement);
}
public void faqInsert(FaqDTO dto) {//게시글 작성
	statement = namespace + ".faqInsert";
	int i = sqlSession.insert(statement,dto);
	System.out.println(i+"개의 게시글이 등록되었습니다.");
}
public FaqDTO boardInfo(String faqNo) {//게시글 정보
	statement = namespace + ".boardInfo";
	return sqlSession.selectOne(statement,faqNo);
}
public void boardDel(String faqNo) {//게시글 삭제
	statement = namespace + ".boardDel";
	int i = sqlSession.delete(statement,faqNo);
	System.out.println(i+"개의 게시글이 삭제되었습니다.");
	}
public void boardUpdate(FaqDTO dto) {//게시글 수정
	statement = namespace + ".boardUpdate";
	int i = sqlSession.update(statement, dto);
	System.out.println(i+"개의 게시글를 수정하였습니다.");
}
}
