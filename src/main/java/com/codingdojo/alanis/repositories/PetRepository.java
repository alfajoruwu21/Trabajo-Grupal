package com.codingdojo.alanis.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.alanis.models.Pet;

@Repository
public interface PetRepository extends CrudRepository<Pet, Long>{
	
	
	List<Pet> findByName(String name); //ejemplo
	
	Optional<Pet> findById(Long id);//por id 
	
	
}
