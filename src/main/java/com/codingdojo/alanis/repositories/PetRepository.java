package com.codingdojo.alanis.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.alanis.models.Pet;

@Repository
public interface PetRepository extends CrudRepository<Pet, Long>{
	
	
	List<Pet> findByName(String name); //ejemplo
	
	Optional<Pet> findById(Long id);//por id 
	
	//List<Pet> findFirst8ById(Long id);
	
	@Query(value="SELECT * FROM pets LIMIT 8;" , nativeQuery = true)
	List<Pet> carrusel();
	
}
