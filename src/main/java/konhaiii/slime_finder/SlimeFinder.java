package konhaiii.slime_finder;

import net.fabricmc.api.ModInitializer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SlimeFinder implements ModInitializer {
	public static final String MOD_ID = "slime_finder";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize() {
		ModItems.initialize();
		LOGGER.info("Slime Finder: Initialized");
	}
}