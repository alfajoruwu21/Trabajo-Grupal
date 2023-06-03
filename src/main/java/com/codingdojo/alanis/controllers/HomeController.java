package com.codingdojo.alanis.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.codingdojo.alanis.models.Pet;
import com.codingdojo.alanis.models.User;
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
	public String home(Model model,
					   HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		
		model.addAttribute("pets", petService.carrusel());
		
		System.out.println(petService.carrusel());
		
		return "home/home.jsp";
	}
	
	@GetMapping("/adopcion")
	public String adopcion(@ModelAttribute("pet") Pet pet,
						   HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		return "pet/adopcion.jsp";
	}
	
	@PostMapping("/adopcion")//formulario de creacion de mascotas
	public String adopcion(@Valid @ModelAttribute("pet") Pet pet, 
						   BindingResult result,
						   MultipartFile imagen,
						   HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		if(result.hasErrors()) {
			System.out.println("hola");
			return "pet/adopcion.jsp";
			
		}else {
			if(!imagen.isEmpty()) {
                Path directorioImagenes = Paths.get("src/main/resources/static/img");
                String rutaAbsoluta = directorioImagenes.toFile().getAbsolutePath();

                try {

                    byte[] bytesImg = imagen.getBytes();
                    Path rutaCompleta = Paths.get(rutaAbsoluta+"/"+imagen.getOriginalFilename());
                    Files.write(rutaCompleta, bytesImg);//guarda la imagen en la ruta

                    pet.setImage(imagen.getOriginalFilename());
                    System.out.println(imagen.getOriginalFilename());
                }catch(IOException e) {
                    e.printStackTrace();
                }
            }
			petService.guardarMascotas(pet);
			return "redirect:/home";
		}
		
	}
	
	@GetMapping("/mostrar/{petId}")
	public String mostrarMascota(@PathVariable("petId")Long petId,
								 Model model,
								 HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		Pet mostrarPet = petService.buscarMascotasPorId(petId);
		model.addAttribute("mostrarPet", mostrarPet);
		
		return "/pet/mostrar.jsp";
		
	}
	
	@GetMapping("/donaciones")
	public String donaciones(HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		return "/pet/donaciones.jsp";
	}
	
	@GetMapping("/adoptar")
	public String adoptar(Model model) {
		
		model.addAttribute("pets", petService.mostrarMascota());
		
		return "/pet/adoptar.jsp";
	}
	
	@GetMapping("/Perfil/{userId}")
	public String perfil(@PathVariable("userId") Long userId,
						 HttpSession session) {
		
		/*Revisa que mi usuario haya iniciado sesion*/
		User userInMethod = (User)session.getAttribute("userInSession");
		
		if(userInMethod == null) { //para que no puedan entrar directamente con el url
			return "redirect:/";
		}
		/*=======Revisa que mi usuario haya iniciado sesion=======*/
		
		return "";
	}
	
}
