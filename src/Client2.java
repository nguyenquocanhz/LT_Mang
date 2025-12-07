import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;
public class Client2 {
    public Client2(){}


    public static void main(String[] args){
        new Thread(() -> {
            try {
                Socket client = new Socket("localhost", 3000);



                while (true) {
                    BufferedReader in = new BufferedReader(
                            new InputStreamReader(client.getInputStream())
                    );
                    PrintWriter out = new PrintWriter(client.getOutputStream(), true);

                    Scanner scanner = new Scanner(System.in);

                    System.out.print("Gửi: ");   // in ra màn hình client
                    String msg = scanner.nextLine();

                    out.println(msg);             // gửi msg sang server
                    System.out.println("Server :" + in.readLine());

                    if (msg.equalsIgnoreCase("bye")) break;
                }


                client.close();
            } catch (IOException e) {
                System.out.println("Không kết nối được tới server.");
            }
        }).start();
    }
}
