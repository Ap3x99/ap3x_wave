local label =
[[
//
     ___    ____ ______  __    _       _____ _    ________
    /   |  / __ \__  / |/ /   | |     / /   | |  / / ____/
   / /| | / /_/ //_ <|   /    | | /| / / /| | | / / __/   
  / ___ |/ ____/__/ /   |     | |/ |/ / ___ | |/ / /___   
 /_/  |_/_/   /____/_/|_|     |__/|__/_/  |_|___/_____/   
                                                       
					  Created by Ap3x99
					Script is up to date!
]]

--version checker
Citizen.CreateThread( function()
	updatePath = "/Ap3x99/ap3x_wave"
	resourceName = "ap3x_wave ("..GetCurrentResourceName()..")"
	
	function checkVersion(err, responseText, headers)
		curVersion = LoadResourceFile(GetCurrentResourceName(), "version") -- make sure the "version" file actually exists in your resource root!
	
		if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
			print("\n###############################")
			print("\n"..resourceName.." is outdated, should be:\n"..responseText.."is:\n"..curVersion.."\nplease update it from https://github.com"..updatePath.."")
			print("\n###############################")
		elseif tonumber(curVersion) > tonumber(responseText) then
			print("You somehow skipped a few versions of "..resourceName.." or the git went offline, if it's still online i advise you to update ( or downgrade? )")
		else
			print( label )
		end
	end
	
	PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/master/version", checkVersion, "GET")
	end)