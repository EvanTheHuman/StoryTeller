--StoryTeller was made by EvanTheHuman (4096x2160) under the MIT license 
--https://github.com/EvanTheHuman/StoryTeller/blob/main/LICENSE
local story = {
	formatver = 1,
	background = "rbxasset://textures/loading/darkLoadingTexture.png",
	textcolor = Color3.new(1, 1, 1),
	initialtext = "A thief with a chainsaw and mask broke into your house",
	option1 = {
		optiontext = "Run",
		responsetext = "You attempted to run to the door but he chucked his chainsaw at you",
		"won",
		win = "failed escape",
	},
	option2 = {
		optiontext = "Hide",
		responsetext = "You hid in a broken fridge",
		option1 = {
			optiontext = "Throw old knife at thief",
			responsetext = "You missed and then the thief got a headshot with the same knife",
			"won",
			win = "dead"
		},
		option2 = {
			optiontext = "Tackle thief",
			responsetext = "You were able to tackle the thief and take them out with their own chainsaw",
			"won",
			win = "survivor"
		},
		option3 = {
			optiontext = "Wait",
			responsetext = "The theif successfuly robbed your place then opened the fridge for a snack",
			"Background",
			background = "rbxassetid://6362079146",
			"won",
			win = "hold up"
		}
	},
	option3 = {
		optiontext = "Surrender",
		responsetext = "You gave the theif everything he wanted and now have no money, but are still alive",
		"won",
		win = "win win",
	},
}
	
return story
