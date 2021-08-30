package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberPasswordValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		MemberCommand memberCommand = (MemberCommand)target;
		if(!memberCommand.isMemPwConEq()) {
			errors.rejectValue("memPwCon", "nomatch");
		}
	
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		}
	}
