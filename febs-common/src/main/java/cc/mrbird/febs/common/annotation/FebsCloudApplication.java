package cc.mrbird.febs.common.annotation;

import cc.mrbird.febs.common.selector.FebsCloudApplicationSelector;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * @author MrBird
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Import(FebsCloudApplicationSelector.class)
public @interface FebsCloudApplication {
}
