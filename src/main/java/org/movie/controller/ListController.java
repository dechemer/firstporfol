package org.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/list/*")
public class ListController {

	@RequestMapping(value="/screening", method=RequestMethod.GET)
	public String list() {
		
		return "/list/screening";
	}
}
