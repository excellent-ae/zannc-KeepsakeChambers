---@meta _
---@diagnostic disable: lowercase-global

modutil.mod.Path.Context.Wrap("AdvanceKeepsake", function()
    local traitName = game.GameState.LastAwardTrait
    local startingKeepsakeLevel = GetKeepsakeLevel(traitName, true)

    if startingKeepsakeLevel < 3 then
        modutil.mod.Path.Wrap("IncrementTableValue", function(base, tableArg, key, amount)
            if amount == nil then
                amount = config.Increment
            end

            if tableArg[key] == nil then
                tableArg[key] = 0
            end

            tableArg[key] = tableArg[key] + amount
        end)
    end
end)
