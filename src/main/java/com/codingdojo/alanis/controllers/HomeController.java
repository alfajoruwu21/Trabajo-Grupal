package com.codingdojo.alanis.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.alanis.models.Pet;
import com.codingdojo.alanis.services.PetService;


@Controller
public class HomeController {

	@Autowired
	private PetService petService;
	
	@GetMapping("/")
	public String index() {
		//si el usuario tiene iniciada sesión mandar al home, si no, mandarlo a registrar
		return "redirect:/register";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home/home.jsp";
	}
	
	@GetMapping("/adopcion")
	public String adopcion(@ModelAttribute("pet") Pet pet) {
		return "pet/adopcion.jsp";
	}
	
	@PostMapping("/adopcion")//formulario de creacion de mascotas
	public String adopcion(@Valid @ModelAttribute("pet") Pet pet, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("hola");
			return "pet/adopcion.jsp";
			
		}else {
			petService.guardarMascotas(pet);
			return "redirect:/home";
		}
		
	}
	
	@GetMapping("/donaciones")
	public String donaciones() {
		return "pet/donaciones.jsp";
	}
}
