---@meta KeepsakePort-zannc-config
local config = {
    enabled = true,
    ChamberThresholdLevel1 = 5,
    ChamberThresholdLevel2 = 10
}

local descriptions = {
    enabled = "Set to true to enable the mod, false to disable.",

    ChamberThresholdLevel1 = "Amount of Chambers to clear to increase rarity to Rare from Common",
    ChamberThresholdLevel2 = "Amount of Chambers to clear to increase rarity to Epic from Rare"
}

return config, descriptions
