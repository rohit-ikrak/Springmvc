package springmvcsearch;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GeneralExceptionHandler {
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler() {
		return "error";
	}
}
