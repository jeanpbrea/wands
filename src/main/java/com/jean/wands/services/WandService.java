package com.jean.wands.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.jean.wands.models.User;
import com.jean.wands.models.Wand;
import com.jean.wands.repositories.UserRepository;
import com.jean.wands.repositories.WandRepository;

@Service
public class WandService {
	private final UserRepository userRepository;
	private final WandRepository wandRepository;
	
	public WandService(UserRepository userRepository, WandRepository wandRepository) {
		this.userRepository = userRepository;
		this.wandRepository = wandRepository;
	}
	
	public List<User> allUser(){
		return (List<User>) userRepository.findAll();
	}
	
	public List<Wand> allWand(){
		return (List<Wand>) wandRepository.findAll(); 
	}
	
	public Wand createWand(Wand wand) {
		return wandRepository.save(wand);
	}
	
	public Wand findWand(Long id) {
		Optional<Wand> optionalWand = wandRepository.findById(id);
		if(optionalWand.isPresent()) {
			return optionalWand.get();
		}else {
			return null;
		}
	}
	
	public Wand updateWand(Wand wand) {
		return wandRepository.save(wand);
	}
	
	public Wand updateWand(Long id, String wood, String core, Double length, String flex, String creator, String description) {
		Wand updateWand = wandRepository.findById(id).get();
		updateWand.setWood(wood);
		updateWand.setCore(core);
		updateWand.setLength(length);
		updateWand.setFlex(flex);
		updateWand.setCreator(creator);
		updateWand.setDescription(description);
		return wandRepository.save(updateWand);
	}
	
	public void deleteWand(Long id) {
		wandRepository.deleteById(id);
	}
	

}
