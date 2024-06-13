---@meta KeepsakeChambers-zannc-config
local config = {
    enabled = true,
    Increment = 5,
}

local descriptions = {
    enabled = "Set to true to enable the mod, false to disable.",

    Increment =
    "Amount of 'chamber clears' to increment by on a chamber clear, eg increment of 5 will get to 25 chambers in 5 rooms.\nIncrement of 5 allows you to max a keepsake in 15 rooms",
}

return config, descriptions
