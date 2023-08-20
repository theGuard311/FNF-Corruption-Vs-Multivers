function onCreate()

    -- background shit

    makeLuaSprite('streetd1', 'last-corridor/hall-2', 1200, 550);
	addLuaSprite('streetd1', false);
	scaleObject('streetd1', 7.2, 7,.2);
    setProperty('streetd1.visible', true)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

    makeLuaSprite('streetd2', 'last-corridor/hall', 1200, 550);
	addLuaSprite('streetd2', false);
	scaleObject('streetd2', 7.2, 7,.2);
	setLuaSpriteScrollFactor('streetd2', 1, 1);

    makeLuaSprite('overlayd1', 'last-corridor/overlay-2', 1200, 550);
	addLuaSprite('overlayd1', true);
	scaleObject('overlayd1', 7.2, 7,.2);
    setProperty('overlayd1.visible', true)
	setLuaSpriteScrollFactor('overlayd1', 1, 1);
	setProperty('overlayd1.alpha', 0.5)

    makeAnimatedLuaSprite('overlayd2','last-corridor/overlay-anim',-50, 0)
        addAnimationByPrefix('overlayd2','Idle','Spikes',45,true)
	addLuaSprite('overlayd2', true);
	scaleObject('overlayd2', 1, 1);
	setLuaSpriteScrollFactor('overlayd2', 1, 1);
	scaleObject('overlayd2', 0.8, 0.8)
	setObjectCamera('overlayd2', 'hud')

	setProperty('streetd1.antialiasing', false)
	setProperty('streetd2.antialiasing', false)
	setProperty('overlayd1.antialiasing', false)

    	setProperty('overlayd2.visible', false)
	setProperty('streetd2.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlayd1.alpha', 0.5)
		    	setProperty('overlayd2.visible', false)
			setProperty('streetd2.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('overlayd1.alpha', 1)
		    	setProperty('overlayd2.visible', true)
			setProperty('streetd2.visible', false)
		end
		if value1 == 'elfondo3' then
			setProperty('overlayd1.alpha', 0)
		    	setProperty('overlayd2.visible', false)
			setProperty('streetd2.visible', true)
		end
	end
end
