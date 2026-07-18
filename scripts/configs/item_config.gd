class_name ItemConfig

enum Keys {
	# Pickupables
	Stick,
	Stone,
	Plant,
	Mushroom,
	Fruit,
	Log,
	Coal,
	Flintstone,
	RawMeat,
	CookedMeat,
	# Craftables
	Axe,
	Pickaxe,
	Campfire,
	Multitool,
	Rope,
	Tinderbox,
	Torch,
	Tent,
	Raft
}

const ITEM_RESOURCE_PATHS := {
	Keys.Stick: "res://resources/items/pickupables/stick_resource.tres",
	Keys.Stone: "res://resources/items/pickupables/stone_resource.tres",
	Keys.Plant: "res://resources/items/pickupables/plant_resource.tres",
	Keys.Mushroom: "res://resources/items/pickupables/mushroom_resource.tres",
	Keys.Fruit: "res://resources/items/pickupables/fruit_resource.tres",
	Keys.Log: "res://resources/items/pickupables/log_resource.tres",
	Keys.Coal: "res://resources/items/pickupables/coal_resource.tres",
	Keys.Flintstone: "res://resources/items/pickupables/flintstone_resource.tres",
	Keys.RawMeat: "res://resources/items/pickupables/raw_meat_resource.tres",
	Keys.CookedMeat: "res://resources/items/pickupables/cooked_meat_resource.tres",
	Keys.Axe: "res://resources/items/equippables/axe_resource.tres",
	Keys.Pickaxe: "res://resources/items/craftables/pickaxe_resource.tres",
	Keys.Campfire: "res://resources/items/craftables/campfire_resource.tres",
	Keys.Multitool: "res://resources/items/craftables/multitool_resource.tres",
	Keys.Rope: "res://resources/items/craftables/rope_resource.tres",
	Keys.Tinderbox: "res://resources/items/craftables/tinderbox_resource.tres",
	Keys.Torch: "res://resources/items/craftables/torch_resource.tres",
	Keys.Tent: "res://resources/items/craftables/tent_resource.tres",
	Keys.Raft: "res://resources/items/craftables/raft_resource.tres"
}

const CRAFTABLE_ITEM_KEYS: Array[Keys] = [
	Keys.Axe,
	#Keys.Pickaxe,
	#Keys.Campfire,
	#Keys.Multitool,
	Keys.Rope,
	#Keys.Tinderbox,
	#Keys.Torch,
	#Keys.Tent,
	#Keys.Raft
]

const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe: "res://resources/items/crafting_blueprints/axe_blueprint.tres",
	Keys.Rope: "res://resources/items/crafting_blueprints/rope_blueprint.tres"
}

const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe: "res://scenes/items/equippables/equippable_axe.tscn"
}

const PICKUPABLE_ITEM_PATHS := {
	Keys.Log: "res://scenes/items/interactables/rigid_pickupable_log.tscn"
}

static func get_item_resource(key: Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))

static func get_crafting_blueprint_resource(key: Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(key))
	
static func get_equippable_item(item_key: Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(item_key))
	
static func get_pickupable_item(item_key: Keys) -> PackedScene:
	return load(PICKUPABLE_ITEM_PATHS.get(item_key))
