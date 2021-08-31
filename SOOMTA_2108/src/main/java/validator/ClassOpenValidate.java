package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ClassOpenValidate implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmpty(errors, "className", "required");
		ValidationUtils.rejectIfEmpty(errors, "classStart", "required");
		ValidationUtils.rejectIfEmpty(errors, "classEnd", "required");
		ValidationUtils.rejectIfEmpty(errors, "classTotal", "required");
		ValidationUtils.rejectIfEmpty(errors, "classPrice", "required");
		ValidationUtils.rejectIfEmpty(errors, "classWay", "required");
		ValidationUtils.rejectIfEmpty(errors, "classGender", "required");
		ValidationUtils.rejectIfEmpty(errors, "classIntroduce", "required");
		ValidationUtils.rejectIfEmpty(errors, "classImg", "required");
	}
	
}
