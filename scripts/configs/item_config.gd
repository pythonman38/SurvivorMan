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
	Keys.Stick: "res://resources/items/pickupables/stick_pickupable.tres",
	Keys.Stone: "res://resources/items/pickupables/stone_pickupable.tres",
	Keys.Plant: "res://resources/items/pickupables/plant_pickupable.tres",
	Keys.Mushroom: "res://resources/items/consumables/mushroom_consumable.tres",
	Keys.Fruit: "res://resources/items/pickupables/fruit_pickupable.tres",
	Keys.Log: "res://resources/items/pickupables/log_pickupable.tres",
	Keys.Coal: "res://resources/items/pickupables/coal_pickupable.tres",
	Keys.Flintstone: "res://resources/items/pickupables/flintstone_pickupable.tres",
	Keys.RawMeat: "res://resources/items/pickupables/raw_meat_pickupable.tres",
	Keys.CookedMeat: "res://resources/items/pickupables/cooked_meat_pickupable.tres",
	Keys.Axe: "res://resources/items/equippables/axe_equippable.tres",
	Keys.Pickaxe: "res://resources/items/craftables/pickaxe_craftable.tres",
	Keys.Campfire: "res://resources/items/craftables/campfire_craftable.tres",
	Keys.Multitool: "res://resources/items/craftables/multitool_craftable.tres",
	Keys.Rope: "res://resources/items/craftables/rope_craftable.tres",
	Keys.Tinderbox: "res://resources/items/craftables/tinderbox_craftable.tres",
	Keys.Torch: "res://resources/items/craftables/torch_craftable.tres",
	Keys.Tent: "res://resources/items/craftables/tent_craftable.tres",
	Keys.Raft: "res://resources/items/craftables/raft_craftable.tres"
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
	Keys.Axe: "res://scenes/items/equippables/equippable_axe.tscn",
	Keys.Mushroom: "res://scenes/items/equippables/consumable_mushroom.tscn"
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
