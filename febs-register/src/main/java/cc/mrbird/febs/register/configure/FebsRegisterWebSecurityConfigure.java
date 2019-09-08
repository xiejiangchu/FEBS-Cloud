package cc.mrbird.febs.register.configure;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * WebSecurity配置
 *
 * @author MrBird
 */
@EnableWebSecurity
public class FebsRegisterWebSecurityConfigure extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.headers().frameOptions().disable()
                .and()
                .csrf().ignoringAntMatchers("/eureka/**")
                .and()
                .authorizeRequests().antMatchers("/actuator/**").permitAll();
        super.configure(http);
    }

}
