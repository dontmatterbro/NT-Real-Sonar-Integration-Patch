NTSONAR = {} -- Real Sonar - Neurotrauma Feature Patch
NTSONAR.Name="Real Sonar - Neurotrauma Feature Patch"
NTSONAR.Version = "A1.0.0"
NTSONAR.VersionNum = 010000100
NTSONAR.MinNTVersion = "A1.10.0"
NTSONAR.MinNTVersionNum = 01100000
NTSONAR.Path = table.pack(...)[1]
Timer.Wait(function() if NTC ~= nil then NTC.RegisterExpansion(NTSONAR) end end,1)

--Wait a tick to let mods load
Timer.Wait(function() 
	if (SERVER or (CLIENT and not Game.IsMultiplayer) ) and (NTC == nil) then --checks if NT is active
		print("Error loading Real Sonar - Neurotrauma Feature Patch: It SOUNDS like Neurotrauma isn't loaded!")
		return
	end
	
	if (SERVER or (CLIENT and not Game.IsMultiplayer) ) and (RealSonar == nil) then --checks if Real Sonar is active
		print("Error loading Real Sonar - Neurotrauma Feature Patch: It SOUNDS like Real Sonar isn't loaded!")
		return
	end
	
		--server side scripts
	if SERVER or (CLIENT and not Game.IsMultiplayer) then
		--dofile(NTSONAR.Path.."/Lua/Scripts/Server/loremipsum.lua")
	end
		
		--client side scripts
	if CLIENT then
		--dofile(NTSONAR.Path.."/Lua/Scripts/Client/loremipsum.lua")
	end

		--biscripts
	--dofile(NTSONAR.Path.."/Lua/Scripts/Shared/loremipsum.lua")


	--this one is gonna have a fucking config 
	dofile(NTSONAR.Path.."/Lua/Scripts/Shared/config.lua")

end,1)


