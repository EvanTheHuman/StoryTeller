local module = {}
function module:start(parent)
	local watermark = Instance.new("TextLabel")
	watermark.Name = "hdfkjl"
	watermark.Size = UDim2.new(0,100,0,25)
	watermark.BackgroundTransparency = 1
	watermark.Text = "StoryTeller"
	watermark.TextScaled = true
	watermark.AnchorPoint = Vector2.new(0,1)
	watermark.Position = UDim2.new(0,0,1,0)
	
	
	local main = require(parent.Story)
	local gui = parent
	local background = gui:WaitForChild("background")
	local text = gui:WaitForChild("text")
	--BUTTONS
	local button1 = gui.option1
	local button2 = gui.option2
	local button3 = gui.option3
	--Setting everything up
	watermark.Parent = gui
	background.Image = main["background"]
	text.Text = main["initialtext"]
	text.TextColor3 = main["textcolor"]
	button1.TextColor3 = main["textcolor"]
	button2.TextColor3 = main["textcolor"]
	button3.TextColor3 = main["textcolor"]
	watermark.TextColor3 = main["textcolor"]
	button1.Text = main["option1"]["optiontext"]
	button2.Text = main["option2"]["optiontext"]
	button3.Text = main["option3"]["optiontext"]

	--functions
	currentOption = main
	lastOption = nil
	won = false
	local function win(a,b)
		text.Text = a.."\nYou have completed the "..b.." ending!"
		button1.Text = "Retry"
		button2.Text = ""
		button3.Text = ""
	end
	local function update()
		print("Update!")
		for _,v in pairs(currentOption) do
			print(v)
			if v == "won" then
				won = true
				win(currentOption["responsetext"],currentOption["win"])
			end
			if v == "coded" then
				currentOption["code"]()
			end
			if v == "Background" then
				background.Image = currentOption["background"]
			end
		end
		if won == false then
			text.Text = currentOption["responsetext"]
			button1.Text = currentOption["option1"]["optiontext"]
			button2.Text = currentOption["option2"]["optiontext"]
			button3.Text = currentOption["option3"]["optiontext"]
		end
	end

	gui.option1.MouseButton1Click:Connect(function()
		if won then
			won = false
			currentOption = main
			lastOption = nil
			background.Image = main["background"]
			text.Text = main["initialtext"]
			text.TextColor3 = main["textcolor"]
			button1.TextColor3 = main["textcolor"]
			button2.TextColor3 = main["textcolor"]
			button3.TextColor3 = main["textcolor"]
			button1.Text = main["option1"]["optiontext"]
			button2.Text = main["option2"]["optiontext"]
			button3.Text = main["option3"]["optiontext"]

		else
			lastOption = currentOption
			currentOption = lastOption["option1"]
			update()
		end
	end)
	gui.option2.MouseButton1Click:Connect(function()
		lastOption = currentOption
		currentOption = lastOption["option2"]
		update()
	end)
	gui.option3.MouseButton1Click:Connect(function()
		lastOption = currentOption
		currentOption = lastOption["option3"]
		update()
	end)
end
return module
