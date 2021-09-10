package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.TutorCommand;

public class TutorJoinValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		TutorCommand tutorCommand = (TutorCommand)target;
		if(!tutorCommand.isTutorPwConEq() && !tutorCommand.isTutorEmailConEq()) {
			errors.rejectValue("tutorPwCon", "nomatch");
			errors.rejectValue("tutorEmailCon", "nomatch");
		}else if(!tutorCommand.isTutorEmailConEq()) {
			errors.rejectValue("tutorEmailCon", "nomatch");
		}else if(!tutorCommand.isTutorPwConEq()) {
			errors.rejectValue("tutorPwCon", "nomatch");
		}
		ValidationUtils.rejectIfEmpty(errors, "tutorId", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorName", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorDob", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorPhone", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorEmailCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "tutorArea", "required");
	}

}
