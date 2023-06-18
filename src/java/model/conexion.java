package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class conexion 
{
    
    private final JdbcTemplate jdbcTemplate;
    private final String db = "jdbc:postgresql://127.0.0.1:5432/VOD";  
    private final String user = "postgres";
    private final String password = "postgres";
    public Connection conexion = null;

    public conexion() 
    {

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl(db);
        dataSource.setUsername(user);
        dataSource.setPassword(password);
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void conectar() 
    {

        try 
        {
            Class.forName("org.postgresql.Driver");
            conexion = DriverManager.getConnection(db, user, password);

        } catch (ClassNotFoundException | SQLException e) 
        {
            //System.out.println("error: " + e);    
        }

    }

    public List getQuery(String sql) 
    {
        System.out.println(sql);
        List datos = this.jdbcTemplate.queryForList(sql);
        return datos;

    }

    public int query(String sql) 
    {
        System.out.println(sql);
        int datos = this.jdbcTemplate.update(sql);
        return datos;
    }
    
    public Connection prepareStatements(){
        try 
        {
            Class.forName("org.postgresql.Driver");
            conexion = DriverManager.getConnection(db, user, password);
            return conexion;
        }
         catch (ClassNotFoundException | SQLException e) 
        {
            System.out.println("error: " + e);  
            return null;
        }
    }
    
    public void callProcedure(String sql) 
    {
        System.out.println(sql);
        this.jdbcTemplate.execute(sql);
    }
    
}
