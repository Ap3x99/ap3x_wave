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
		Citizen.InvokeNative(0xB96B00E976BE977F, 3.0) --Controls deep ocean wave intensity
	end
end)

--By default the value is set to 3.0 because that's what I've found to be best for realistic calm ocean waves.
--Set it to 2.0 if you're using h4/heist4/mpheist4 or tuner/mptuner gamebuild. If you don't, Cayo Perico will be flooded in some parts.

--Script Written by Ap3x_99 (https://forum.cfx.re/u/ap3x_99)