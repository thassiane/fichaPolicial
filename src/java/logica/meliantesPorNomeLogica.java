/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import ficha.meliante;
import ficha.melianteDao;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thassiane
 */
public class meliantesPorNomeLogica implements Logica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
        String nome = request.getParameter("nome");
        melianteDao melianteDao = new melianteDao();
        ArrayList<meliante> meliantes = melianteDao.localizaMelianteNome(nome);
        request.setAttribute("meliantes", meliantes);
        return "listaMeliantePorNome.jsp";
    }
}
