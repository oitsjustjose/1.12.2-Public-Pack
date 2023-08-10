import mods.chisel.Carving;

#########################################################
#               Minor Tweaks & Fixes:                   #
#########################################################

#AA stuff requiring IE materials:
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<ore:blockSheetmetalIron>, <ore:stickTreatedWood>, <ore:blockSheetmetalIron>], [<ore:stickTreatedWood>, <ore:gemQuartzBlack>, <ore:stickTreatedWood>], [<ore:blockSheetmetalIron>, <ore:stickTreatedWood>, <ore:blockSheetmetalIron>]]);

# Change AA Solidifier recipe if no s. exp.
recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:block_xp_solidifier>, [[<extrautils2:magicapple>, <extrautils2:magicapple>, <extrautils2:magicapple>], [<extrautils2:spike_gold>, <actuallyadditions:block_misc:9>, <extrautils2:spike_gold>], [<extrautils2:magicapple>, <extrautils2:magicapple>, <extrautils2:magicapple>]]);

# Quark Hardened Clay Recipe
furnace.addRecipe(<minecraft:hardened_clay>, <quark:hardened_clay_tiles>);
furnace.addRecipe(<minecraft:hardened_clay>, <quark:stained_clay_tiles:*>);

# Quark Redstone Lamp Recipe
recipes.remove(<quark:lit_lamp>);
recipes.addShapeless(<quark:lit_lamp>, [<minecraft:lever>, <minecraft:redstone_lamp>]);
recipes.addShapeless(<minecraft:redstone_lamp>, [<minecraft:lever>, <quark:lit_lamp>]);

# Fix Thermal Foundation iron gear recipe conflict:
recipes.removeShaped(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 5, [[null, <minecraft:iron_bars>, null], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], [null, <minecraft:iron_bars>, null]]);

# A simple little recipe for ThermalDynamics! :)
recipes.addShapeless(<thermaldynamics:duct_48>, [<thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>]);

#########################################################
#                Difficulty Adjustments:                #
#########################################################

# Remove EZPZ dumb smelting
furnace.remove(<minecraft:coal:0>);
furnace.remove(<minecraft:coal:1>);
furnace.remove(<minecraft:emerald>, <actuallyadditions:item_dust:3>);
furnace.remove(<minecraft:diamond>);

# Fix incompat with Adventurer's Toolkit and AA
recipes.remove(<actuallyadditions:item_knife>);
recipes.remove(<actuallyadditions:item_misc:3>);
recipes.addShapeless(<actuallyadditions:item_knife>, [<ore:stickWood>, <actuallyadditions:item_misc:2>]);

# Angel Ring Re-balance
recipes.removeShaped(<extrautils2:angelring:*>);
recipes.addShaped(<extrautils2:angelring>, [
    [<extrautils2:opinium:8>, <minecraft:elytra>, <extrautils2:opinium:8>],
    [<thaumadditions:seal_symbol>.withTag({Aspect: "volatus"}), <thaumcraft:cloud_ring>, <thaumadditions:seal_symbol>.withTag({Aspect: "volatus"})],
    [<thaumadditions:mithminite_ingot>, <thaumcraft:primordial_pearl>, <thaumadditions:mithminite_ingot>]
]);
recipes.addShapeless(<extrautils2:angelring:0>, [<extrautils2:angelring:*>, <ore:blockGlass>, <ore:blockGlass>]);
recipes.addShapeless(<extrautils2:angelring:1>, [<extrautils2:angelring:*>, <minecraft:feather>, <minecraft:feather>]);
recipes.addShapeless(<extrautils2:angelring:2>, [<extrautils2:angelring:*>, <ore:dyePink>, <ore:dyePink>]);
recipes.addShapeless(<extrautils2:angelring:3>, [<extrautils2:angelring:*>, <quark:enderdragon_scale>, <quark:enderdragon_scale>]);
recipes.addShapeless(<extrautils2:angelring:4>, [<extrautils2:angelring:*>, <ore:nuggetGold>, <ore:nuggetGold>]);
recipes.addShapeless(<extrautils2:angelring:5>, [<extrautils2:angelring:*>, <minecraft:leather>, <minecraft:leather>]);

# Removes easy recipes for alloys
recipes.removeShapeless(<ore:ingotInvar>*3, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotNickel>]);
recipes.removeShapeless(<ore:ingotBronze>*4, [<ore:ingotTin>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]);

# Steeling things
recipes.remove(<thermalexpansion:frame:0>);
recipes.remove(<rftools:machine_frame>);
recipes.remove(<enderio:item_material:0>);
recipes.addShaped(<thermalexpansion:frame:0>, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);
recipes.addShaped(<rftools:machine_frame>, [[<ore:ingotSteel>, <minecraft:dye:4>, <ore:ingotSteel>], [<ore:nuggetGold>, <ore:gearTin>, <ore:nuggetGold>], [<ore:ingotSteel>, <minecraft:dye:4>, <ore:ingotSteel>]]);
recipes.addShaped(<enderio:item_material:0>, [[<minecraft:iron_bars>, <ore:ingotSteel>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <enderio:item_material:20>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <ore:ingotSteel>, <minecraft:iron_bars>]]);

#########################################################
#              Quark Basalt Fix w/ Chisel               #
#########################################################

Carving.addVariation("basalt", <quark:basalt:0>);
Carving.addVariation("basalt", <quark:basalt:1>);

#########################################################
#                   Cloche Re-balance:                  #
#########################################################

recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<ore:blockGlassHardened>, <immersiveengineering:material:26>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

#########################################################
#               Bewitchment Garnet Compat:              #
#########################################################

<ore:gemAll>.add(<techreborn:gem:0>);
<ore:gemAll>.add(<techreborn:gem:1>);
<ore:gemAll>.add(<techreborn:gem:2>);
<ore:gemAll>.add(<techreborn:gem:3>);
<ore:gemAll>.add(<techreborn:gem:4>);

#Tweak to Witchery ; all credit to Lenvill
val demon = <entity:witchery:demon>;
demon.addDrop(<witchery:demon_heart> % 50);

# Add Botania's Grass Seeds to grass drops
vanilla.seeds.addSeed(<botania:grassseeds:0> % 1);

# Make Smooth Stone craftable like 1.14+, bump PJR a step behind
furnace.remove(<projectred-core:resource_item>);
furnace.addRecipe(<projectred-core:resource_item:0> * 4, <subaquatic:smooth_stone>);
furnace.addRecipe(<subaquatic:smooth_stone>, <minecraft:stone>);

# Remove redundant bronze gear
recipes.remove(<techreborn:bronzeboots>);
recipes.remove(<techreborn:bronzeleggings>);
recipes.remove(<techreborn:bronzechestplate>);
recipes.remove(<techreborn:bronzehelmet>);
recipes.remove(<techreborn:bronzehoe>);
recipes.remove(<techreborn:bronzeaxe>);
recipes.remove(<techreborn:bronzespade>);
recipes.remove(<techreborn:bronzepickaxe>);
recipes.remove(<techreborn:bronzesword>);