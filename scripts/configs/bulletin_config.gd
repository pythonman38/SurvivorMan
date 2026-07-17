class_name BulletinConfig

enum Keys {
	InteractionPrompt,
	CrafingMenu
}

const BULLETIN_PATHS := {
	Keys.InteractionPrompt: "res://scenes/UI/interaction_prompt.tscn",
	Keys.CrafingMenu: "res://scenes/UI/menus/crafting_menu.tscn"
}

static func get_bulletin(key: Keys) -> Bulletin:
	return load(BULLETIN_PATHS.get(key)).instantiate()
