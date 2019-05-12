package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author N E Felix
 */
public class koneksi {
    private Connection koneksi;
    public Connection getKoneksi(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/sip";
            String user = "root";
            String pass = "";           
            koneksi=DriverManager.getConnection(url, user, pass);
            System.out.println("Koneksi Berhasil");
        }catch (Exception e){
            System.err.println("koneksi gagal " +e.getMessage());
        }  
        return koneksi;
}
}