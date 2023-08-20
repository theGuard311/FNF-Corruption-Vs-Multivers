function onCreate()

    -- background shit

    makeLuaSprite('streetd', 'last-corridor/hall-2', 1200, 550);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 7.2, 7,.2);
    	setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('overlay', 'last-corridor/overlay-3', 1200, 550);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 7.2, 7,.2);
    	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('streetd-2', 'last-corridor/hall-3', 1200, 550);
	addLuaSprite('streetd-2', false);
	scaleObject('streetd-2', 7.2, 7,.2);
	setLuaSpriteScrollFactor('streetd-2', 1, 1);

    makeLuaSprite('overlay-2', 'last-corridor/overlay-4', 1200, 550);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 7.2, 7,.2);
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

    makeAnimatedLuaSprite('fire-wall','last-corridor/Fire wall',200, 950)
        addAnimationByPrefix('fire-wall','Idle','Flame wall',30,true)
	addLuaSprite('fire-wall', true);
	scaleObject('fire-wall', 1, 1);
	setLuaSpriteScrollFactor('fire-wall', 1, 1);

	setProperty('streetd.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('streetd-2.antialiasing', false)
	setProperty('fire-wall.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)

    	setProperty('fire-wall.visible', false)
    	setProperty('streetd-2.visible', false)
    	setProperty('overlay-2.visible', false)

end

function onStartCountdown()
	setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', true);
			setProperty('overlay.visible', true)
			setProperty('fire-wall.visible', false)
		    	setProperty('overlay-2.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('streetd-2.visible', true);
			setProperty('streetd.visible', false);
			setProperty('overlay.visible', false)
			setProperty('fire-wall.visible', true)
		    	setProperty('overlay-2.visible', true)
		end
	end
end