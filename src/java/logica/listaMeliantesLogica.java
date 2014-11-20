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
public class listaMeliantesLogica implements Logica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
        melianteDao melianteDao = new melianteDao();
        ArrayList<meliante> meliantes = melianteDao.getListaDeMeliantes();
        request.setAttribute("meliantes", meliantes);
        return "listaMeliante.jsp";
    }

}
