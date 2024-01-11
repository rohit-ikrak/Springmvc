package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class Page1Handler {

	@RequestMapping("/page/{id}")
	public String pageshow(@PathVariable("id") long id) {
		System.out.println(id);
		
		return "page1";
	}
	@RequestMapping("page")
	public String pageerr() {
//		String s = null;
//		System.out.println(s.length());
		return "page1";
	}
	
	@ResponseStatus(value = HttpStatus.I_AM_A_TEAPOT)
	@ExceptionHandler(value = Exception.class)
	public String exceptionHandlerGeneric(Model m) {
		m.addAttribute("msg", "Exception has occured");
		return "error";
	}
	
}
