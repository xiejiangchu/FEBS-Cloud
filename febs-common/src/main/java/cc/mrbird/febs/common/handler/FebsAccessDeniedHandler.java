package cc.mrbird.febs.common.handler;

import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.utils.FebsUtil;
import org.springframework.http.MediaType;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author MrBird
 */
public class FebsAccessDeniedHandler implements AccessDeniedHandler {

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException {
        FebsResponse febsResponse = new FebsResponse();
        FebsUtil.makeResponse(
                response, MediaType.APPLICATION_JSON_UTF8_VALUE,
                HttpServletResponse.SC_FORBIDDEN, febsResponse.message("没有权限访问该资源"));
    }
}
