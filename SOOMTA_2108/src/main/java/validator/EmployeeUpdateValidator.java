package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.EmployeeCommand;

public class EmployeeUpdateValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		EmployeeCommand employeeCommand = (EmployeeCommand)target;
		if(!employeeCommand.isEmpPwConEq()) {
			errors.rejectValue("empPwCon", "nomatch");
		}
		ValidationUtils.rejectIfEmpty(errors, "empPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPhone", "required");
		ValidationUtils.rejectIfEmpty(errors, "empEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "empAddr", "required");
	}

}
