package com.jacaranda.model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pelicula {

	@Id
	private String cip;
	private String titulo;
	private String nacionalidad;
	private double presupuesto;
	private int duracion;
	public Pelicula(String cip, String titulo, String nacionalidad, double presupuesto, int duracion) {
		super();
		this.cip = cip;
		this.titulo = titulo;
		this.nacionalidad = nacionalidad;
		this.presupuesto = presupuesto;
		this.duracion = duracion;
	}
	public Pelicula() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCip() {
		return cip;
	}
	public void setCip(String cip) {
		this.cip = cip;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getNacionalidad() {
		return nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}
	public double getPresupuesto() {
		return presupuesto;
	}
	public void setPresupuesto(double presupuesto) {
		this.presupuesto = presupuesto;
	}
	public int getDuracion() {
		return duracion;
	}
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cip);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pelicula other = (Pelicula) obj;
		return Objects.equals(cip, other.cip);
	}
	
	
	
}
