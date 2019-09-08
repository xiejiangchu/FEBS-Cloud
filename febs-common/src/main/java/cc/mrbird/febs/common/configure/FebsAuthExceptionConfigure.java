package cc.mrbird.febs.common.configure;

import cc.mrbird.febs.common.handler.FebsAccessDeniedHandler;
import cc.mrbird.febs.common.handler.FebsAuthExceptionEntryPoint;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;

/**
 * 异常翻译配置
 *
 * @author MrBird
 */
public class FebsAuthExceptionConfigure {

    @Bean
    @ConditionalOnMissingBean(name = "accessDeniedHandler")
    public FebsAccessDeniedHandler accessDeniedHandler() {
        return new FebsAccessDeniedHandler();
    }

    @Bean
    @ConditionalOnMissingBean(name = "authenticationEntryPoint")
    public FebsAuthExceptionEntryPoint authenticationEntryPoint() {
        return new FebsAuthExceptionEntryPoint();
    }
}
