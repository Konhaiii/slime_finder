package konhaiii.slime_finder;

import net.minecraft.ChatFormatting;
import net.minecraft.network.chat.Component;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.component.TooltipDisplay;
import org.jspecify.annotations.NonNull;

import java.util.function.Consumer;

public class ModTooltips extends Item {
	public ModTooltips(Properties properties) {
		super(properties);
	}

	@SuppressWarnings("deprecation")
	@Override
	public void appendHoverText(ItemStack stack, @NonNull TooltipContext context, @NonNull TooltipDisplay displayComponent, @NonNull Consumer<Component> textConsumer, @NonNull TooltipFlag type) {
		if (stack.getItem() == ModItems.SLIME_DOWSING_STAFF) {
			textConsumer.accept(Component.translatable("item.slime_finder.slime_dowsing_staff.desc1").withStyle(ChatFormatting.GRAY));
			textConsumer.accept(Component.translatable("item.slime_finder.slime_dowsing_staff.desc2").withStyle(ChatFormatting.GRAY));
		}
	}
}