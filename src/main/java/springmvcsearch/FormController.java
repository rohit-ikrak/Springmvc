package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {
	
	@RequestMapping("/form")
	public String showForm() {
		return "normal_form";
	}
	
	@RequestMapping(path="/handleform", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("user") User user, BindingResult result) {
		
		if(result.hasErrors()) {
			return "normal_form";
		}
		
		System.out.println(user);
		return "success";
	}
}
