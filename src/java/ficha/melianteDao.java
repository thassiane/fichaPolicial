/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ficha;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Thassiane
 */
public class melianteDao {

    private Connection connection;
    ArrayList<meliante> listaDeMeliantes = new ArrayList<meliante>();
    ArrayList<meliante> listaDeMeliantes2 = new ArrayList<meliante>();

    public melianteDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adicionaMeliante(meliante meliante) {
        String sql = "insert into fichaPolicial " + "(nome, cpf, endereco, tipoDeDelito, data, hora, localDoCrime, estado, foto)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            // prepared statement para inserção
            PreparedStatement stmt = connection.prepareStatement(sql);
            // seta os valores
            stmt.setString(1, meliante.getNome());
            stmt.setString(2, meliante.getCpf());
            stmt.setString(3, meliante.getEndereco());
            stmt.setString(4, meliante.getTipoDeDelito());
            stmt.setDate(5, new Date(meliante.getData().getTimeInMillis()));
            stmt.setString(6, meliante.getHora());
            stmt.setString(7, meliante.getLocalDoCrime());
            stmt.setString(8, meliante.getEstado());
            stmt.setString(9, meliante.getFoto());

            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void removeMeliante(long idMeliane) {
        try {
            String sql1 = "DELETE FROM fichaPolicial WHERE id= ?";
            PreparedStatement stmt2 = connection.prepareStatement(sql1);
            stmt2.setLong(1, idMeliane);

            // executa
            stmt2.execute();
            stmt2.close();
        } catch (SQLException ex) {
            Logger.getLogger(melianteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<meliante> getListaDeMeliantes() {
        PreparedStatement stmt;
        listaDeMeliantes.clear();
        try {
            stmt = connection.prepareStatement("select * from fichaPolicial order by tipoDeDelito,nome asc");
//            stmt = connection.prepareStatement("select * from fichaPolicial order by nome asc");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Contato
                meliante meliante = new meliante();
                meliante.setId(rs.getLong("id"));
                meliante.setNome(rs.getString("nome"));
                meliante.setCpf(rs.getString("cpf"));
                meliante.setEndereco(rs.getString("endereco"));
                meliante.setTipoDeDelito(rs.getString("tipoDeDelito"));

                // montando a data através do Calendar
                Calendar data = Calendar.getInstance();
                data.setTime(rs.getDate("data"));
                meliante.setData(data);
                meliante.setHora(rs.getString("hora"));

                meliante.setLocalDoCrime(rs.getString("localDoCrime"));
                meliante.setEstado(rs.getString("estado"));
                meliante.setFoto(rs.getString("foto"));

                // adicionando o objeto à lista
                listaDeMeliantes.add(meliante);
            }
            rs.close();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(melianteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaDeMeliantes;
    }

    public ArrayList<meliante> listaDeProcurados() {
        PreparedStatement stmt;
        listaDeMeliantes.clear();
        try {
            stmt = connection.prepareStatement("select * from fichaPolicial where estado = 'foragido'");
//            stmt = connection.prepareStatement("select * from fichaPolicial order by nome asc");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Contato
                meliante meliante = new meliante();
                meliante.setId(rs.getLong("id"));
                meliante.setNome(rs.getString("nome"));
                meliante.setCpf(rs.getString("cpf"));
                meliante.setEndereco(rs.getString("endereco"));
                meliante.setTipoDeDelito(rs.getString("tipoDeDelito"));

                // montando a data através do Calendar
                Calendar data = Calendar.getInstance();
                data.setTime(rs.getDate("data"));
                meliante.setData(data);
                meliante.setHora(rs.getString("hora"));

                meliante.setLocalDoCrime(rs.getString("localDoCrime"));
                meliante.setEstado(rs.getString("estado"));
                meliante.setFoto(rs.getString("foto"));

                // adicionando o objeto à lista
                listaDeMeliantes.add(meliante);
            }
            rs.close();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(melianteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaDeMeliantes;
    }

    public void alteraMeliante(meliante meliante, long idParaAlterar) {
        try {
            Date d = new Date(meliante.getData().getTimeInMillis());
            String sql = " UPDATE fichaPolicial SET nome = ? , cpf = ?, endereco = ?, data = ?, tipoDeDelito = ?, hora = ?, localDoCrime= ?, estado=?, foto=? WHERE id= ?";
            PreparedStatement stmt2 = connection.prepareStatement(sql);
            stmt2.setString(1, meliante.getNome());
            stmt2.setString(2, meliante.getCpf());
            stmt2.setString(3, meliante.getEndereco());
            stmt2.setDate(4, d);
            stmt2.setString(5, meliante.getTipoDeDelito());
            stmt2.setString(6, meliante.getHora());
            stmt2.setString(7, meliante.getLocalDoCrime());
            stmt2.setString(8, meliante.getEstado());
            stmt2.setString(9, meliante.getFoto());
            stmt2.setLong(10, idParaAlterar);

            // executa
            stmt2.execute();
            stmt2.close();
        } catch (SQLException ex) {
            Logger.getLogger(melianteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<meliante> localizaMelianteNome(String nome) {
        try {
            String sql2 = "SELECT * FROM fichaPolicial WHERE nome= '" + nome + "'";
            PreparedStatement stmt2 = connection.prepareStatement(sql2);

            ResultSet rs = stmt2.executeQuery();

            while (rs.next()) {
                meliante meliante = new meliante();
                meliante.setId(rs.getLong("id"));
                meliante.setNome(rs.getString("nome"));
                meliante.setCpf(rs.getString("cpf"));
                meliante.setEndereco(rs.getString("endereco"));
                meliante.setTipoDeDelito(rs.getString("tipoDeDelito"));

                // montando a data através do Calendar
                Calendar data = Calendar.getInstance();
                data.setTime(rs.getDate("data"));
                meliante.setData(data);
                meliante.setHora(rs.getString("hora"));

                // adicionando o objeto à lista
                listaDeMeliantes.add(meliante);
            }
            // executa
            rs.close();
            stmt2.close();
        } catch (SQLException ex) {
            Logger.getLogger(melianteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaDeMeliantes;
    }
}
