package cc.mrbird.febs.common.annotation;

import cc.mrbird.febs.common.configure.FebsLettuceRedisConfigure;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * @author MrBird
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Import(FebsLettuceRedisConfigure.class)
public @interface EnableFebsLettuceRedis {
}
