function onCreate()
	-- background shit
	makeLuaSprite('bg', 'background', -400, -500);
	setScrollFactor('background', 0.8, 0.8);
	scaleObject('bg',1.3,1.3)

	makeLuaSprite('beams', 'beams', -400, -300);
	setScrollFactor('beams', 0.7, 0.7);
	scaleObject('beams',1.2,1.2)

	makeAnimatedLuaSprite('fantine', 'Fantine', -200, -200);
	addAnimationByPrefix('fantine', 'idle', 'Fantine idle', 12, false);
	setScrollFactor('fantine', 0.8, 0.8);
	scaleObject('fantine',2,2);



	addLuaSprite('bg', false);
	addLuaSprite('fantine', false);
	addLuaSprite('beams', false);

	function onBeatHit()
		-- triggered 4 times per section
		if curBeat % 1 == 0 then
			objectPlayAnimation('fantine', 'idle');
		end
	end


end