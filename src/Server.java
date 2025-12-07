import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.Time;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicInteger;

public class Server {
    private AtomicInteger clientCount = new AtomicInteger(0);
    public Server(){

    }

    public void testThreadWithServerSocket(int port){
        new Thread(() -> {
            try(ServerSocket server = new ServerSocket(port)){
                System.out.println("Server đang chạy tại port: " + port);
                while (true){
                    Socket clientSocket = server.accept();
                    int id = clientCount.incrementAndGet();
                    System.out.println("Client " + id + " đã kết nối!");
                    System.out.println("Client kết nối : " + clientSocket.getInetAddress());

                    new Thread(() -> waitClient(clientSocket,id)).start();
                }
            } catch (IOException ioException) {
                System.out.println("Error : " + ioException.getMessage());
            }
        }).start();

    }
    public void waitClient(Socket client , int id) {

        try {
            System.out.println("Client" + id + " : " + client.getInetAddress());
            Scanner scanner = new Scanner(System.in);

            BufferedReader in = new BufferedReader(
                    new InputStreamReader(client.getInputStream())
            );
            PrintWriter out = new PrintWriter(client.getOutputStream(), true);
            LocalDateTime now = LocalDateTime.now();
            String time = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

            while (true) {
                String clientMsg = in.readLine();
                System.out.println("Client " + id + ": " + clientMsg);
                if(clientMsg.equals("date")){
                    out.println("Thời gian : " + time);
                }
                else {
                    out.println("Chào mừng Client " + id);
                }
                if (clientMsg.equalsIgnoreCase("bye")) {
                    out.println(clientMsg);
                    break;
                }
            }
            System.out.println("Client " + id + " đã ngắt kết nối.");

            client.close();
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    public static void main(String[] args){
        Server s = new Server();
        s.testThreadWithServerSocket(3000);
    }
}
