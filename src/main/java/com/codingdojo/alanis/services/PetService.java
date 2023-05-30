package com.codingdojo.alanis.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.alanis.models.Pet;
import com.codingdojo.alanis.repositories.PetRepository;


@Service
public class PetService {

	@Autowired
	private PetRepository petRepo;
	
	public Pet buscarMascotasPorId(Long id) {
		Optional<Pet> Mascota = petRepo.findById(id);
		if(Mascota.isPresent()) {
			return Mascota.get();
		}else {
			return null;
		}
	}
	
	public Pet guardarMascotas(Pet newPet) {
		return petRepo.save(newPet);
	}
	
}
