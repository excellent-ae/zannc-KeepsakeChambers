---@meta _
---@diagnostic disable: lowercase-global

modutil.mod.Path.Wrap("SetupMap", function(base)
    for _, traitData in pairs(game.TraitData) do
        if traitData.ChamberThresholds then
            traitData.ChamberThresholds = { config.ChamberThresholdLevel1, config.ChamberThresholdLevel2 }
        end
    end
    base()
end)
