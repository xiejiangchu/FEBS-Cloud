package cc.mrbird.febs.server.test;

import cc.mrbird.febs.common.annotation.FebsCloudApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

@EnableFeignClients
@EnableDiscoveryClient
@FebsCloudApplication
@SpringBootApplication
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class FebsServerTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(FebsServerTestApplication.class, args);
    }

}
