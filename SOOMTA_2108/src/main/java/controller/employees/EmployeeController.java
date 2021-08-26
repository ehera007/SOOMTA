package controller.employees;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.DelService;
import service.employee.EmployeeDelService;
import service.employee.EmployeeInfoService;
import service.employee.EmployeeJoinService;
import service.employee.EmployeeListService;
import service.employee.EmployeePwUpdateService;
import service.employee.EmployeeUpdateService;
import service.employee.InfoService;
import service.employee.ListService;

@Controller
@RequestMapping("emp")
public class EmployeeController {
	@Autowired
	EmployeeJoinService employeeJoinService;
	@Autowired
	EmployeeListService employeeListService;
	@Autowired
	EmployeeInfoService employeeInfoService;
	@Autowired
	EmployeeUpdateService employeeUpdateService;
	@Autowired
	EmployeePwUpdateService employeePwUpdateService;
	@Autowired
	EmployeeDelService employeeDelService;
	@Autowired
	ListService listService;
	@Autowired
	InfoService infoService;
	@Autowired
	DelService delService;
	@RequestMapping("main")
	public String empPage() {
		return "emp/empmain";
	}
	@RequestMapping("boardList")//게시글 보기
	public String boardList(Model model) {
		listService.boardList(model);
		return "emp/board/boardList";
	}
	@RequestMapping("boardInfo")//게시글 상세 보기
	public String boardInfo() {
		return "emp/board/boardInfo";
	}
	@RequestMapping("boardMod")//게시판 수정
	public String boardMod() {
		return "emp/board/boardMod";
	}
	@RequestMapping("boardModOk")//게시판 수정 완료
	public String boardModOk() {
		return "redirect:boardInfo";
	}
	@RequestMapping("boardDel")//게시판 삭제
	public String boardDel() {
		return "redirect:boardList";
	}
	@RequestMapping("boardWrite")//게시글 작성
	public String boardWrite() {
		return "emp/board/boardWrite";
	}
	@RequestMapping("memList")//일반 회원 보기
	public String memList(Model model) {
		listService.memList(model);
		return "emp/mem/memList";
	}
	//0826
	@RequestMapping("memInfo")//일반 회원 상세 보기
	public String memInfo(@RequestParam(value="memId") String memId, Model model) {
		infoService.memInfo(memId, model);
		return "emp/mem/memInfo";
	}
	@RequestMapping("memPwCon")
	public String memPwCon(@RequestParam(value="memId") String memId, Model model) {//회원pw변경 전 확인
		infoService.memInfo(memId,model);
		return "emp/mem/memPwCon";
	}
	
	///////회원 pw 확인 및 수정///////////
	
	@RequestMapping("memMod")//회원 수정
	public String memMod(@RequestParam(value="memId") String memId, Model model) {
		return "emp/mem/memMod";
	}
	@RequestMapping("memModOk")//회원 수정 완료
	public String memModOk() {
		return "redirect:memInfo";
	}
	@RequestMapping("memDel")//회원 탈퇴
	public String memDel(@RequestParam(value="memId") String memId){
		delService.memDel(memId);
		return "redirect:memList";
	}
	@RequestMapping("tutorList")//튜터 회원보기
	public String tutorList(Model model) {
		listService.tutorList(model);
		return "emp/tutor/tutorList";
	}
	@RequestMapping("tutorInfo")//튜터 상세 보기(기본정보)
	public String tutorInfo(@RequestParam(value="tutorId") String tutorId, Model model) {
		infoService.tutorInfo(tutorId, model);
		return "emp/tutor/tutorInfo";
	}
	@RequestMapping("tutorProfile")//튜터 프로필정보
	public String tutorProfile(@RequestParam(value="tutorId") String tutorId, Model model) {
		infoService.tutorProfile(tutorId, model);
		return "emp/tutor/tutorProfile";
	}
	@RequestMapping("tutorPwCon")
	public String tutorPwCon(@RequestParam(value="tutorId") String tutorId, Model model) {//튜터pw변경 전 확인
		infoService.tutorInfo(tutorId,model);
		return "emp/tutor/tutorPwCon";
	}
	
	///////튜터 pw 확인 및 수정///////////
	
	@RequestMapping("tutorMod")//튜터 수정
	public String tutorMod(@RequestParam(value="tutorId") String tutorId, Model model) {
		return "emp/tutor/tutorMod";
	}
	@RequestMapping("tutorModOk")//튜터 수정 완료
	public String tutorModOk() {
		return "redirect:tutorInfo";
	}
	@RequestMapping("tutorDel")//튜터 탈퇴
	public String tutorDel(@RequestParam(value="tutorId") String tutorId){
		delService.tutorDel(tutorId);
		return "redirect:tutorList";
	}
	@RequestMapping("empList")//관리자 리스트 보기
	public String empList(Model model) {
		employeeListService.empList(model);
		return "emp/emp/empList";
	}
	@RequestMapping("empInfo")//관리자 상세 보기
	public String empInfo(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId, model);
		return "emp/emp/empInfo";
	}
	@RequestMapping("empMod")//관리자 수정
	public String empMod(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId, model);
		return "emp/emp/empMod";
	}
	@RequestMapping("empPwCon")//pw수정 전 확인
	public String empPwCon(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId,model);
		return "emp/emp/empPwCon";
	}
	@RequestMapping(value="empPwChange", method=RequestMethod.POST)//관리자 pw 확인 및 수정
	public String empPwChange(@RequestParam(value="empId") String empId, @RequestParam(value="empPw") String empPw, Model model, 
			HttpSession session, @ModelAttribute(value = "employeeCommand") EmployeeCommand employeeCommand) {
		employeeInfoService.empInfo(empId,model);
		int i = employeePwUpdateService.empPwCon(empPw, model, session);
		if(i == 1) {
			return "emp/emp/empPwConErr";
		}else {
			return "emp/emp/empPwChange";
		}
	}
	@RequestMapping(value="empPwChangeOk", method=RequestMethod.POST)//관리자 pw수정 완료
	public String empPwChangeOk(EmployeeCommand employeeCommand, Errors errors) {
		employeePwUpdateService.empPwUpdate(employeeCommand, errors);
		if(errors.hasErrors()) {
			return "emp/emp/empPwChange";
		}
		return "emp/emp/empPwChangeOk"; 
	}
	@RequestMapping(value="empModOk", method=RequestMethod.POST)//관리자 수정 완료
	public String empModOk(EmployeeCommand employeeCommand) {
		employeeUpdateService.empUpdate(employeeCommand);
		String empId = employeeCommand.getEmpId();
		return "redirect:empInfo?empId="+empId;
	}
	@RequestMapping("empDel")//관리자 삭제
	public String empDel(@RequestParam(value="empId") String empId) {
		employeeDelService.empDel(empId);
		return "redirect:empList";
	}
	@RequestMapping("empJoin")//관리자 등록폼
	public String empJoin() {
		return "emp/emp/empJoin";
	}
	@RequestMapping(value="empJoinOk", method=RequestMethod.POST)//관리자 등록 완료
	public String empJoinOk(EmployeeCommand employeeCommand) {
		employeeJoinService.empInsert(employeeCommand);
		return "redirect:empList";
	}
	@RequestMapping("myInfo")
	public String myInfo(HttpSession session, Model model) {//내정보 보기
		employeeInfoService.myInfo(session,model);
		return "emp/myPage/myInfo";
	}
	@RequestMapping("myInfoMod")
	public String myInfoMod(HttpSession session, Model model) {//내정보 수정
		employeeInfoService.myInfo(session, model);
		return "emp/myPage/myInfoMod";
	}
	@RequestMapping(value="myInfoModOk", method=RequestMethod.POST)
	public String myInfoModOk(EmployeeCommand employeeCommand, HttpSession session) {//내정보 수정완료
		employeeUpdateService.myInfoUpdate(employeeCommand, session);
		return "redirect:myInfo";
	}
	@RequestMapping(value="myPwChange")
	public String myPwChange() {//내 pw 변경
		return "emp/myPage/myPwChange";
	}
	@RequestMapping(value="myPwChangeOk", method=RequestMethod.POST)
	public String myPwChangeOk(EmployeeCommand employeeCommand, Errors errors, HttpSession session) {//내 pw 변경 완료
		employeePwUpdateService.myPwUpdate(employeeCommand, errors, session);
		if(errors.hasErrors()) {
			return "emp/myPage/myPwChange";
		}
		return "emp/myPage/myPwChangeOk";
	}
	
	
	
}
