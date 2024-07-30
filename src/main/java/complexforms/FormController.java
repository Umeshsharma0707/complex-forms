package complexforms;


import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FormController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path = "/processForm", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute("student") Student student,BindingResult result) {
		
		if(result.hasErrors()) {
			return "index";
		}
		
		System.out.println(student.toString());
		
		
		return "success";
	}
}
