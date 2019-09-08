package cc.mrbird.febs.register.runner;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class StartedUpRunner implements ApplicationRunner {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ConfigurableApplicationContext context;

    @Value("${spring.application.name:'FEBS-Register'}")
    private String applicationName;

    @Override
    public void run(ApplicationArguments args) {
        if (context.isActive()) {
            log.info(" __    ___   _      ___   _     ____ _____  ____ ");
            log.info("/ /`  / / \\ | |\\/| | |_) | |   | |_   | |  | |_  ");
            log.info("\\_\\_, \\_\\_/ |_|  | |_|   |_|__ |_|__  |_|  |_|__ ");
            log.info("                                                      ");
            log.info("{} 启动完毕，时间：{}", applicationName, LocalDateTime.now());
        }
    }
}
