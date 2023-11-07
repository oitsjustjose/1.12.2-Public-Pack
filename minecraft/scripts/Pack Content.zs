import mods.chisel.Carving;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;

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
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 5, [[null, <minecraft:iron_bars>, null], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], [null, <minecraft:iron_bars>, null]]);

# A simple little recipe for ThermalDynamics! :)
recipes.addShapeless(<thermaldynamics:duct_48>, [<thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>, <thermaldynamics:cover:*>]);

# Let II rubber saplings be replaced by TechReborn's.
recipes.replaceAllOccurences(<immersiveintelligence:rubber_sapling>, <ore:saplingRubber>);

# Cathedral's  stone column doesn't use bricks, conflicting with Speleothems
recipes.remove(<cathedral:cathedral_pillar_various:0>);
recipes.addShaped(<cathedral:cathedral_pillar_various:0>, [[<ore:brickStone>], [<ore:brickStone>], [<ore:brickStone>]]);

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

# Make the EBW shelves much more cheap
recipes.remove(<ebwizardry:oak_bookshelf>);
recipes.remove(<ebwizardry:spruce_bookshelf>);
recipes.remove(<ebwizardry:birch_bookshelf>);
recipes.remove(<ebwizardry:jungle_bookshelf>);
recipes.remove(<ebwizardry:acacia_bookshelf>);
recipes.remove(<ebwizardry:dark_oak_bookshelf>);

recipes.addShaped(<ebwizardry:oak_bookshelf>, [
    [<ebwizardry:gilded_wood:0>, <ebwizardry:gilded_wood:0>, <ebwizardry:gilded_wood:0>],
    [null,                       <bibliocraft:bookcase:0>,   null                      ],
    [<ebwizardry:gilded_wood:0>, <ebwizardry:gilded_wood:0>, <ebwizardry:gilded_wood:0>]
]);

recipes.addShaped(<ebwizardry:spruce_bookshelf>, [
    [<ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>],
    [null,                       <bibliocraft:bookcase:1>,   null                      ],
    [<ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>]
]);

recipes.addShaped(<ebwizardry:birch_bookshelf>, [
    [<ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>],
    [null,                       <bibliocraft:bookcase:2>,   null                      ],
    [<ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>]
]);

recipes.addShaped(<ebwizardry:jungle_bookshelf>, [
    [<ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>],
    [null,                       <bibliocraft:bookcase:3>,   null                      ],
    [<ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>]
]);

recipes.addShaped(<ebwizardry:acacia_bookshelf>, [
    [<ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>],
    [null,                       <bibliocraft:bookcase:4>,   null                      ],
    [<ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>]
]);

recipes.addShaped(<ebwizardry:dark_oak_bookshelf>, [
    [<ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>],
    [null,                       <bibliocraft:bookcase:5>,   null                      ],
    [<ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>]
]);

#########################################################
#                    Extreme Reactors                   #
#########################################################

recipes.replaceAllOccurences(<bigreactors:ingotblutonium>, <techreborn:ingot:25>);
recipes.replaceAllOccurences(<bigreactors:dustblutonium>, <techreborn:dust:67>);
/* Cyanite has a stupid recipe and is only used for a small number of recipes... */
recipes.replaceAllOccurences(<bigreactors:ingotcyanite>, <techreborn:plates:38>);
/* Use HOP Graphite for everything graphite is usually used for */
recipes.replaceAllOccurences(<bigreactors:dustgraphite>, <immersiveengineering:material:18>);
recipes.replaceAllOccurences(<bigreactors:ingotgraphite>, <immersiveengineering:material:19>);
furnace.remove(<bigreactors:ingotgraphite>);

// /* Other stupid resources get nuked too */
recipes.remove(<bigreactors:blockblutonium>);
recipes.remove(<bigreactors:blockcyanite>);
recipes.remove(<bigreactors:blockgraphite>);
recipes.remove(<bigreactors:blockyellorium>);
recipes.remove(<bigreactors:dustblutonium>);
recipes.remove(<bigreactors:dustcyanite>);
recipes.remove(<bigreactors:dustgraphite>);
recipes.remove(<bigreactors:dustyellorium>);
recipes.remove(<bigreactors:ingotblutonium>);
recipes.remove(<bigreactors:ingotcyanite>);
recipes.remove(<bigreactors:ingotgraphite>);
recipes.remove(<bigreactors:ingotyellorium>);

// Axe Ore Dict Entries individually
#<ore:ingotBlutonium>.remove(<bigreactors:ingotblutonium>);
#<ore:ingotCyanite>.remove(<bigreactors:ingotcyanite>);
#<ore:ingotGraphite>.remove(<bigreactors:ingotgraphite>);
#<ore:ingotPlutonium>.remove(<bigreactors:ingotblutonium>);
#<ore:ingotSteel>.remove(<bigreactors:ingotsteel>);
#<ore:ingotUranium>.remove(<bigreactors:ingotyellorium>);
#<ore:ingotYellorium>.remove(<bigreactors:ingotyellorium>);
#<ore:oreYellorite>.remove(<bigreactors:oreyellorite>);
#<ore:oreYellorium>.remove(<bigreactors:oreyellorite>);

#<ore:dustBlutonium>.remove(<bigreactors:dustblutonium>);
#<ore:dustCyanite>.remove(<bigreactors:dustcyanite>);
#<ore:dustGraphite>.remove(<bigreactors:dustgraphite>);
#<ore:dustPlutonium>.remove(<bigreactors:dustblutonium>);
#<ore:dustSteel>.remove(<bigreactors:duststeel>);
#<ore:dustUranium>.remove(<bigreactors:dustyellorium>);
#<ore:dustYellorium>.remove(<bigreactors:dustyellorium>);

// Furnace recipes, gone
furnace.remove(<bigreactors:ingotblutonium>);
furnace.remove(<bigreactors:ingotcyanite>);
furnace.remove(<bigreactors:ingotgraphite>);
furnace.remove(<bigreactors:ingotyellorium>);

// For some reason IE thinks this recipe should exist??
ArcFurnace.removeRecipe(<bigreactors:ingotblutonium>);
// But then nothing lets you make Plutonium Ingots, so let's fix that too
ArcFurnace.addRecipe(<techreborn:ingot:25>, <techreborn:dust:67>, <immersiveengineering:material:7>, 5000, 2048);
BlastFurnace.addRecipe(<techreborn:ingot:25>, <techreborn:dust:67>, 10000, <immersiveengineering:material:7>);

// Now, for some reason, a bunch of recipes have broken by here. Probably an oreDict thing??
recipes.addShaped(<bigreactors:reactorcasingcores>, [
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>],
    [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>],
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:reactorcasing>, [
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>],
    [<ore:ingotHOPGraphite>, <bigreactors:reactorcasingcores>, <ore:ingotHOPGraphite>],
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:reactorcontrolrod>, [
    [<bigreactors:reactorcasing>, <minecraft:piston>, <bigreactors:reactorcasing>],
    [<ore:ingotHOPGraphite>, <ore:dustRedstone>, <ore:ingotHOPGraphite>],
    [<bigreactors:reactorcasing>, <ore:ingotUranium>, <bigreactors:reactorcasing>]
]);

recipes.addShaped(<bigreactors:reactorfuelrod>, [
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>],
    [<ore:blockGlassHardened>, <ore:ingotUranium>, <ore:blockGlassHardened>],
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:turbinehousing>, [
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>],
    [<ore:ingotHOPGraphite>, <bigreactors:turbinehousingcores>, <ore:ingotHOPGraphite>],
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:turbinehousingcores>, [
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>],
    [<ore:ingotGold>, <minecraft:comparator>, <ore:ingotGold>],
    [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:turbinerotorblade>, [
    [<bigreactors:ingotcyanite>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

recipes.addShaped(<bigreactors:turbinerotorshaft>, [
    [null, <ore:ingotSteel>, null],
    [<ore:ingotSteel>, <bigreactors:ingotcyanite>, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, null]
]);

#########################################################
#                        Greenery                       #
#########################################################
recipes.addShapeless(<minecraft:tallgrass:1>, [<greenery:plant/upland/tall/ryegrass>]);
recipes.addShapeless(<minecraft:tallgrass:1>, [<greenery:plant/upland/tall/foxtail>]);
recipes.addShapeless(<minecraft:tallgrass:1>, [<greenery:plant/upland/tall/barley>]);
recipes.addShapeless(<minecraft:tallgrass:2>, [<greenery:plant/upland/tall/eagle_fern>]);

#########################################################
#                         Shears                        #
#########################################################
<botania:elementiumshears>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<botania:manasteelshears>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<enderio:item_dark_steel_shears>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_aluminum>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_bronze>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_constantan>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_copper>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_diamond>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_electrum>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_gold>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_invar>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_lead>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_nickel>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_platinum>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_silver>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_steel>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<thermalfoundation:tool.shears_tin>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));
<witchery:boline>.addTooltip(format.darkRed("Do not work on Greenery Grasses"));

# Fix Immersive Intelligence's ores not smelting right (they're mapped to the wrong outputs)
<ore:orePlatinum>.remove(<immersiveintelligence:ore:0>);
<ore:oreZinc>.remove(<immersiveintelligence:ore:1>);