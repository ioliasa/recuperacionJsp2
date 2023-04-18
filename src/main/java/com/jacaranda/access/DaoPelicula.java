package com.jacaranda.access;

import java.util.List;

import org.hibernate.query.Query;

import com.jacaranda.model.Pelicula;



public class DaoPelicula {

	public static List<Pelicula> getPeliculas(){
		Query<Pelicula> query = ConnectionDAO.getSession().createQuery("SELECT p FROM com.jacaranda.model.Pelicula p");
		List<Pelicula> peliculas = query.getResultList();
		return peliculas;
	}
}
