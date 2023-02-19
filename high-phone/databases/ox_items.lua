-- Items for ox_inventory, copy and paste this below the return line inside the 'ox_inventory/data/items.lua' file.
['phone'] = {
	label = "Phone",
	weight = 164,
	stack = false,
	client = {
		export = "high_phone.openPhone",
		remove = function(total)
			if total < 1 then
				exports.high_phone:closePhone()
			end
		end,
	} 
},

['blue_phone'] = {
	label = "Phone Blue",
	weight = 164,
	stack = false,
},

['red_phone'] = {
	label = "Phone Red",
	weight = 164,
	stack = false,
},

['green_phone'] = {
	label = "Phone Green",
	weight = 164,
	stack = false,
},

['gold_phone'] = {
	label = "Phone Gold",
	weight = 164,
	stack = false,
},

['purple_phone'] = {
	label = "Phone Purple",
	weight = 164,
	stack = false,
},

['black_phone'] = {
	label = "Phone Black",
	weight = 164,
	stack = false,
}
