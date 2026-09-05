local f = CreateFrame("Frame")
local sounds = {
	["Bankrupt (Wheel of Fortune)"] = "Interface\\AddOns\\Awwwww!\\sounds\\Wheel-of-Fortune-Bankrupt.ogg",
	["Donkey Kong"] = "Interface\\AddOns\\Awwwww!\\sounds\\DonkeyKong-Die.ogg",
	["Foghorn"] = "Interface\\AddOns\\Awwwww!\\sounds\\foghorn.ogg",
	["Mega Man"] = "Interface\\AddOns\\Awwwww!\\sounds\\Mega Man Dies_3.ogg",
	["Ms. PacMan"] = "Interface\\AddOns\\Awwwww!\\sounds\\MsPacMan-Death.ogg",
	["PacMan"] = "Interface\\AddOns\\Awwwww!\\sounds\\PacMan-Killed.ogg",
	["Porky Pig"] = "Interface\\AddOns\\Awwwww!\\sounds\\Porky Pig- That's All Folks.mp3",
	["Sad Trombone"] = "Interface\\AddOns\\Awwwww!\\sounds\\Sad-Trombone.ogg",
	["Sega Rally Game Over"] = "Interface\\AddOns\\Awwwww!\\sounds\\Sega Rally-Game Over.ogg",
	["Super Mario Death"] = "Interface\\AddOns\\Awwwww!\\sounds\\SuperMario-Die.ogg",
	["Super Mario Game Over"] = "Interface\\AddOns\\Awwwww!\\sounds\\Super Mario - Game Over.ogg",
	["The Price Is Right"] = "Interface\\AddOns\\Awwwww!\\sounds\\PriceIsRight-GameOver.ogg",
	["Whammy (Press Your Luck)"] = "Interface\\AddOns\\Awwwww!\\sounds\\PressYourLuck-Whammy.ogg",
	["Zelda"] = "Interface\\AddOns\\Awwwww!\\sounds\\LegendOfZelda-Die.ogg",
}
local defaults = {
	channel = 1,
	sounds = {
		["Bankrupt (Wheel of Fortune)"] = true,
		["Donkey Kong"] = true,
		["Foghorn"] = true,
		["Mega Man"] = true,
		["Ms. PacMan"] = true,
		["PacMan"] = true,
		["Porky Pig"] = true,
		["Sad Trombone"] = true,
		["Sega Rally Game Over"] = true,
		["Super Mario Death"] = true,
		["Super Mario Game Over"] = true,
		["The Price Is Right"] = true,
		["Whammy (Press Your Luck)"] = true,
		["Zelda"] = true,
	},
}
local channels = {
	"Master",
	"SFX",
	"Ambience",
	"Music",
}

function DeathSound()
	if not f.buttons or #f.buttons == 0 then return end
	local rndSound = f.buttons[math.random(#f.buttons)].text:GetText()
	local attempts = 0
	while not AwwwwwDB.sounds[rndSound] and attempts < 100 do
		rndSound = f.buttons[math.random(#f.buttons)].text:GetText()
		attempts = attempts + 1
	end
	if AwwwwwDB.sounds[rndSound] then
		local channelName = channels[AwwwwwDB.channel] or "Master"
		PlaySoundFile(sounds[rndSound], channelName)
	end
end

local function AddOptions()
	local OnEnter = function(self, title, text)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(title)
		GameTooltip:AddLine(text, 1, 1, 1, true)
		GameTooltip:Show()
	end

	local header = f:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	header:SetPoint("TOPLEFT", 20, -15)
	header:SetText("Awwwww!")

	local subheader = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	subheader:SetPoint("TOPLEFT", 20, -32)
	subheader:SetPoint("RIGHT", -20, -32)
	subheader:SetHeight(30)
	subheader:SetNonSpaceWrap(true)
	subheader:SetJustifyH("LEFT")
	subheader:SetText("This addon will play the selected sounds at random upon your death.")

	f.buttons = {}
	local i = 1
	for sound, path in pairs(sounds) do
		f.buttons[i] = CreateFrame("CheckButton", nil, f, "UICheckButtonTemplate")
		local box = f.buttons[i]
		if i == 1 then
			box:SetPoint("TOPLEFT", 56, -85)
		else
			box:SetPoint("TOPLEFT", f.buttons[i-1], "TOPLEFT", 0, -30)
		end
		box:SetChecked(AwwwwwDB.sounds[sound])
		box:SetScript("OnClick", function(self)
			AwwwwwDB.sounds[sound] = self:GetChecked()
		end)
		
		box.play = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
		box.play:SetPoint("RIGHT", box, "LEFT", -4, 0)
		box.play:SetText("|TInterface\\OPTIONSFRAME\\VoiceChat-Play:14|t")
		box.play:SetSize(32, 28)
		box.play:SetScript("OnEnter", function(self) OnEnter(self, "Test", "Hear this sound.") end)
		box.play:SetScript("OnLeave", function() GameTooltip:Hide() end)
		box.play:SetScript("OnClick", function() PlaySoundFile(path, channels[AwwwwwDB.channel] or "Master") end)
		
		box.text = box:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		box.text:SetPoint("LEFT", box, "RIGHT", 5, 0)
		box.text:SetText(sound)
		
		i = i + 1
	end

	-- FIXED: Template name corrected to "WowStyle1DropdownTemplate"
	local dropdown2 = CreateFrame("DropdownButton", "Awwwww_Dropdown2", f, "WowStyle1DropdownTemplate")
	dropdown2:SetPoint("TOPRIGHT", f, "TOPRIGHT", -30, -100)
	dropdown2:SetWidth(175)

	dropdown2:SetupMenu(function(dropdown, rootDescription)
		rootDescription:SetTag("AWWWWW_CHANNELS")
		for k, v in ipairs(channels) do
			rootDescription:CreateRadio(v, 
				function() return AwwwwwDB.channel == k end, 
				function()
					AwwwwwDB.channel = k
					dropdown2:SetSelectionText(function() return channels[AwwwwwDB.channel] end)
				end
			)
		end
	end)
	
	dropdown2:SetSelectionText(function() return channels[AwwwwwDB.channel] or "Master" end)

	dropdown2:SetScript("OnEnter", function(self) OnEnter(self, "Sound Channel", "Select which channel the sound should be played on. The volume of individual channels and the Master game volume may be adjusted by going to: Escape > Options > Sound.") end)
	dropdown2:SetScript("OnLeave", function() GameTooltip:Hide() end)

	local dropTitle2 = dropdown2:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	dropTitle2:SetPoint("BOTTOMLEFT", dropdown2, "TOPLEFT", 20, 5)
	dropTitle2:SetText("Sound Channel")
end

local function OnInitialize()
	AwwwwwDB = AwwwwwDB or {}
	for k, v in pairs(defaults) do
		if type(AwwwwwDB[k]) == "nil" then
			AwwwwwDB[k] = v
		end
	end
	if type(AwwwwwDB.sounds) ~= "table" then
		AwwwwwDB.sounds = pairs(defaults.sounds)
	end
	
	f.name = "Awwwww!"
	
	local category = Settings.RegisterCanvasLayoutCategory(f, f.name)
	Settings.RegisterAddOnCategory(category)
	
	AddOptions()
	
	f:UnregisterEvent("PLAYER_LOGIN")
	f:RegisterEvent("PLAYER_DEAD")
	f:SetScript("OnEvent", DeathSound)
end

f:SetScript("OnEvent", OnInitialize)
f:RegisterEvent("PLAYER_LOGIN")
