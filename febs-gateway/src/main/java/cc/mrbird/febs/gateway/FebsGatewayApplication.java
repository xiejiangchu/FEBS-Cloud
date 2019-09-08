package cc.mrbird.febs.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@EnableDiscoveryClient
@EnableZuulProxy
@SpringBootApplication
public class FebsGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(FebsGatewayApplication.class, args);
    }
}
