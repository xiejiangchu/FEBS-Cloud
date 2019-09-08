package cc.mrbird.febs.auth.properties;

import lombok.Data;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;

/**
 * @author MrBird
 */
@Data
@SpringBootConfiguration
@PropertySource(value = {"classpath:febs-auth.properties"})
@ConfigurationProperties(prefix = "febs.auth")
public class FebsAuthProperties {

    /**
     * client配置
     */
    private FebsClientsProperties[] clients = {};
    /**
     * 免认证访问路径
     */
    private String anonUrl;
    /**
     * 验证码配置
     */
    private FebsValidateCodeProperties code = new FebsValidateCodeProperties();
}
