package it.generationitaly.cinema.controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import it.generationitaly.cinema.entity.Film;
import it.generationitaly.cinema.repository.FilmRepository;
import it.generationitaly.cinema.repository.impl.FilmRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class ElencoFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private FilmRepository filmrepository = new FilmRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Film> elencoFilm = filmrepository.findAll();
		
		request.setAttribute("elencoFilm", elencoFilm);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("elencofilm.jsp");
		requestDispatcher.forward(request, response);
	}

}