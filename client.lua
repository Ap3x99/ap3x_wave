Citizen.CreateThread(function()
	while true do
		Wait(0)
		Citizen.InvokeNative(0xC54A08C85AE4D410, 0.6) --Controls near shore wave intensity
	end
end)

--Set InvokeNative value to 0.0 for normal GTA waves, 1.0 for no waves, 3.0 for super intense waves.
--By default the value is set to 0.6 because that's what I've found to be best but feel free to adjust as needed.

Citizen.CreateThread(function()
    while true do
		Wait(0)
		Citizen.InvokeNative(0xB96B00E976BE977F, 3.5) --Controls deep ocean wave intensity
	end
end)

--Set InvokeNative value to 3.5 because that's what I've found to be best for realistic calm ocean waves.


--Script Written by Ap3x_99 (https://forum.cfx.re/u/ap3x_99)