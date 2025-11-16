/datum/species/vulpkanin
	// Canine humanoids with furry skin and tails.
	name = "\improper Vulpkanin"
	plural_form = "Vulpkanin"
	id = SPECIES_VULPKANIN
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_NIGHT_VISION,

	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	mutant_bodyparts = list()
	mutanttongue = /obj/item/organ/tongue/vulpkanin
	mutanteyes = /obj/item/organ/eyes/vulpkanin
	mutantbrain = /obj/item/organ/brain/vulpkanin
	coldmod = 1.5
	heatmod = 0.67
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	meat = /obj/item/food/meat/slab/corgi
	skinned_type = /obj/item/stack/sheet/animalhide/vulpkanin
	species_language_holder = /datum/language_holder/vulpkanin
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/vulpkanin,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/vulpkanin,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/vulpkanin,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/vulpkanin,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/vulpkanin,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/vulpkanin,
	)

/datum/species/vulpkanin/randomize_features()
	var/list/features = ..()
	var/main_color
	var/second_color
	var/random = rand(1,5)
	//Choose from a variety of mostly brightish, animal, matching colors
	switch(random)
		if(1)
			main_color = "#FFAA00"
			second_color = "#FFDD44"
		if(2)
			main_color = "#FF8833"
			second_color = "#FFAA33"
		if(3)
			main_color = "#FFCC22"
			second_color = "#FFDD88"
		if(4)
			main_color = "#FF8800"
			second_color = "#FFFFFF"
		if(5)
			main_color = "#999999"
			second_color = "#EEEEEE"
	features[FEATURE_MUTANT_COLOR] = main_color
	features[FEATURE_MUTANT_COLOR_TWO] = second_color
	features[FEATURE_MUTANT_COLOR_THREE] = second_color
	return features

/datum/species/vulpkanin/get_species_description()
	return placeholder_description

/datum/species/vulpkanin/get_species_lore()
	return list(placeholder_lore)
