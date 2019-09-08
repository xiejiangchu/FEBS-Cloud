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
    /**
     * 访问令牌有效时间，单位秒
     */
    private int accessTokenValiditySeconds = 60 * 60 * 24;
    /**
     * 刷新令牌有效视角，单位秒
     */
    private int refreshTokenValiditySeconds = 60 * 60 * 24 * 7;
}
