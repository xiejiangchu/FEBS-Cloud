package cc.mrbird.febs.monitor.admin;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAdminServer
@SpringBootApplication
public class FebsMonitorAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(FebsMonitorAdminApplication.class, args);
    }

}
