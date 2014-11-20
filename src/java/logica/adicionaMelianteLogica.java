/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import ficha.meliante;
import ficha.melianteDao;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thassiane
 */
public class adicionaMelianteLogica implements Logica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String endereco = request.getParameter("endereco");
        String tipoDeDelito = request.getParameter("tipoDeDelito");
        String dataEmTexto = request.getParameter("data");
        Calendar data = null;
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
            data = Calendar.getInstance();
            data.setTime(date);
        } catch (ParseException e) {
            out.println(" Erro de conversão da data ");
            return " "; // para a execução do método
        }
        String hora = request.getParameter("hora");
        String localDoCrime = request.getParameter("localDoCrime");
        String estado = request.getParameter("estado");
        String foto = request.getParameter("foto");
        
        // monta um objeto contato
        meliante meliante = new meliante();
        meliante.setNome(nome);
        meliante.setCpf(cpf);
        meliante.setEndereco(endereco);
        meliante.setTipoDeDelito(tipoDeDelito);
        meliante.setData(data);
        meliante.setHora(hora);
        meliante.setLocalDoCrime(localDoCrime);
        meliante.setEstado(estado);
        meliante.setFoto(foto);

        // salva o contato
        melianteDao dao = new melianteDao();
        dao.adicionaMeliante(meliante);

         return "melianteAdicionado.jsp";

    }

}
