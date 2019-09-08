package cc.mrbird.febs.common.selector;

import cc.mrbird.febs.common.configure.FebsAuthExceptionConfigure;
import cc.mrbird.febs.common.configure.FebsOAuth2FeignConfigure;
import cc.mrbird.febs.common.configure.FebsServerProtectConfigure;
import org.springframework.context.annotation.ImportSelector;
import org.springframework.core.type.AnnotationMetadata;

import javax.annotation.Nonnull;

/**
 * @author MrBird
 */
public class FebsCloudApplicationSelector implements ImportSelector {

    @Override
    public String[] selectImports(@Nonnull AnnotationMetadata annotationMetadata) {
        return new String[]{
                FebsAuthExceptionConfigure.class.getName(),
                FebsOAuth2FeignConfigure.class.getName(),
                FebsServerProtectConfigure.class.getName()
        };
    }
}
