package it.generationitaly.cinema.controller;

import java.io.IOException;
import java.util.List;

import it.generationitaly.cinema.entity.Attore;
import it.generationitaly.cinema.entity.Film;
import it.generationitaly.cinema.repository.impl.AttoreRepositoryImpl;
import it.generationitaly.cinema.repository.impl.FilmRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ricercaFilmEAttoreServlet")
public class RicercaFilmEAttoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AttoreRepositoryImpl attoreRepository = new AttoreRepositoryImpl();
	FilmRepositoryImpl filmRepository = new FilmRepositoryImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ricerca = request.getParameter("ricerca");

		// ricerca attore
		String[] stringaDivisa = ricerca.split(" ");
		String nome = null;
		String cognome = null;
		if (!stringaDivisa[0].equals("") && !stringaDivisa[1].equals("")) {
			nome = stringaDivisa[0];
			cognome = stringaDivisa[1];
		}
		List<Attore> attori = attoreRepository.findAttoreByNomeECognome(nome, cognome);
		if (!attori.isEmpty()) {
			request.setAttribute("attori", attori);
		}
		// ricerca film titolo
		List<Film> filmTitolo = filmRepository.findFilmByTitolo(ricerca);
		if (!filmTitolo.isEmpty()) {
			request.setAttribute("filmTitolo", filmTitolo);
		}

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("film-cercati.jps");
		requestDispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
