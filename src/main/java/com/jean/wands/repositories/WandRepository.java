package com.jean.wands.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jean.wands.models.Wand;

@Repository
public interface WandRepository extends CrudRepository<Wand, Long> {
	List<Wand> findAll();
}
