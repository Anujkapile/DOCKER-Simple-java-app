import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class Main {
    public static void main(String[] args) {
        Date now = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss z");

        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));

        String currentDate = sdf.format(now);

        System.out.println("Hello, Docker! Current date: " + currentDate);
    }
}
