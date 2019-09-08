package cc.mrbird.febs.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.config.server.EnableConfigServer;

/**
 * 配置中心服务
 */
@EnableDiscoveryClient
@EnableConfigServer
@SpringBootApplication
public class FebsConfigApplication {

    public static void main(String[] args) {
        SpringApplication.run(FebsConfigApplication.class, args);
    }

}
