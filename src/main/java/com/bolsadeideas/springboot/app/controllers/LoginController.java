package com.bolsadeideas.springboot.app.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String login(@RequestParam(value = "error",required = false) String error,
			Model model,Principal principal,RedirectAttributes flash) {
		if(principal !=null) {
			flash.addFlashAttribute("info","Ya ha iniciado sesion anteriormente");
			return "redirect:/";
		}
		if(error !=null) {
			model.addAttribute("error","Error en el login : Nombre de usuario o contraseña incorrecta, por favor vuelva a intentarlo!");
			}
		return "login";
	}
}
