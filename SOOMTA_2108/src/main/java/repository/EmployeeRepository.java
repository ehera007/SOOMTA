package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;

public class EmployeeRepository {
@Autowired
SqlSession sqlSession;

String namespace="mappers.employeeMapper";
String statement;

public EmployeeDTO empInfo(String empId) {//관리자 정보
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
}
