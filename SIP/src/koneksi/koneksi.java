package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author N E Felix
 */
public class koneksi {
    public Connection koneksi;
    public Connection getKoneksi(){
        try {
            String url = "jdbc:mysql://localhost/sipf";
            String user = "root";
            String pass = "";           
            koneksi=DriverManager.getConnection(url, user, pass);
            System.out.println("Koneksi Berhasil");
        }catch (SQLException e){
            System.err.println("koneksi gagal " +e.getMessage());
        }  
        return koneksi;
}
}