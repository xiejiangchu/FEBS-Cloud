package cc.mrbird.febs.auth.properties;

import lombok.Data;

/**
 * @author MrBird
 */
@Data
public class FebsClientsProperties {
    /**
     * client_id
     */
    private String client;
    /**
     * client_secret
     */
    private String secret;
    /**
     * 认证类型
     */
    private String grantType = "password,authorization_code,refresh_token";
    /**
     * 范围
     */
    private String scope = "all";
}
