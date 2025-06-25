package com.java.example.model;

import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import lombok.Data;

@Data
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
@Cacheable
public class Employ {
	
	@Id
   
		private int id;
	private String name;
	private String address;

}
