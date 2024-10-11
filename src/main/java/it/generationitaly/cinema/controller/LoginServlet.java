package it.generationitaly.cinema.controller;

import java.io.IOException;

import it.generationitaly.cinema.entity.Utente;
import it.generationitaly.cinema.repository.UtenteRepository;
import it.generationitaly.cinema.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Utente utente = utenteRepository.findByUsername(username);

        if (utente != null && utente.getPassword().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("utente", utente);
            session.setAttribute("username", utente.getUsername());

            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp?erroreCredenziali");
        }
    }
}