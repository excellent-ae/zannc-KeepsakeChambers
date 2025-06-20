function AdvanceKeepsake_wrap()
	local traitName = game.GameState.LastAwardTrait

	if GameState.LastAwardTrait ~= nil and HeroHasTrait(traitName) then
		startingKeepsakeLevel = GetKeepsakeLevel(traitName, true)
	end

	if startingKeepsakeLevel < 3 then
		modutil.mod.Path.Wrap("IncrementTableValue", function(base, tableArg, key, amount)
			amount = config.Increment

			-- Base Game Check below, completely overriding it
			-- if amount == nil then
			--     amount = 1
			-- end

			if tableArg[key] == nil then
				tableArg[key] = 0
			end

			tableArg[key] = tableArg[key] + amount
		end)
	end
end
