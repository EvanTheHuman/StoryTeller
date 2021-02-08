# How To Use
StoryFormat is basic so it is written by hand.
In the installation you have in your game you should have a "Story" ModuleScript.
The source of that ModuleScript should look like this:
```lua
--StoryTeller was made by EvanTheHuman (4096x2160) under the MIT license 
--https://github.com/EvanTheHuman/StoryTeller/blob/main/LICENSE
local story = {
	formatver = 1,
	background = "rbxasset://textures/loading/darkLoadingTexture.png",
	textcolor = Color3.new(1, 1, 1),
	initialtext = "Welcome to Story Teller",
	option1 = {
		optiontext = "Custom Background",
		responsetext = "You can set custom backgrounds",
		"Background",
		backgroud = "rbxassetid://5586301242",
		"won",
		win = "demo",
	},
	option2 = {
		optiontext = "Custom Code",
		responsetext = "You hid in a broken fridge",
		"won",
		win = "demo"
	},
	option3 = {
		optiontext = "Github Page",
		responsetext = "Please read the github page for instructions",
		"won",
		win = "demo",
	},
}
	
return story

```
We will explain how this works in detail in the API section but the basics are,

optiontext is what displays on the button

responsetext is what displays after you click on the button

All of the options need to have 3 options inside of them unless its an ending

To make an ending you do not need options inside of the ending option you just need to add these two lines to that option
```
"won",
win = "lol",
```
so it should display as "The lol ending"
