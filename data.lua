local GROUP = "all-inf-items"

local function new_recipe(id, type)
	data.raw["item"][id].subgroup = GROUP

	local target = data.raw[type][id]
	target.gui_mode = "all"

	local recipe = {
		type = "recipe",
		name = id,
		result = id,
		enabled = true,
		ingredients = { {"iron-plate", 1} },
	}

	return recipe
end

data:extend {
	{
		type = "item-subgroup",
		name = GROUP,
		group = "production",
		order = "z",
	},
}

data:extend{ new_recipe('electric-energy-interface', 'electric-energy-interface') }
data:extend{ new_recipe('infinity-chest', 'infinity-container') }
data:extend{ new_recipe('heat-interface', 'heat-interface') }
data:extend{ new_recipe('infinity-pipe', 'infinity-pipe') }
