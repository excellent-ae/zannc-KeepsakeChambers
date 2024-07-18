---@meta _
---@diagnostic disable

local function drawMenu()
	local value, selected
	value, selected = rom.ImGui.SliderInt("Chamber(s)", config.Increment, 1, 75)
	if selected then
		config.Increment = value
	end
end

-- standalone
rom.gui.add_imgui(function()
	if rom.ImGui.Begin("Keepsake Chambers") then
		drawMenu()
		rom.ImGui.End()
	end
end)

-- dropdown
rom.gui.add_to_menu_bar(function()
	if rom.ImGui.BeginMenu("Configure") then
		drawMenu()
		rom.ImGui.EndMenu()
	end
end)
