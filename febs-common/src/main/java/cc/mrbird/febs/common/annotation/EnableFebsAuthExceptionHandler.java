package cc.mrbird.febs.common.annotation;

import cc.mrbird.febs.common.configure.FebsAuthExceptionConfigure;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * @author MrBird
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Import(FebsAuthExceptionConfigure.class)
public @interface EnableFebsAuthExceptionHandler {
}
