function onCreate()

    -- background shit

    makeLuaSprite('black', '', 0, 0);
	makeGraphic('black',1280,720,'000000')
	addLuaSprite('black', true);
	setLuaSpriteScrollFactor('black',0,0)
	setProperty('black.scale.x',2)
	setProperty('black.scale.y',2)
	setProperty('black.alpha',1)

    makeLuaSprite('streetd1', 'last-corridor/hall', 1200, 550);
	addLuaSprite('streetd1', false);
	scaleObject('streetd1', 7.2, 7,.2);
    setProperty('streetd1.visible', true)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

    makeLuaSprite('streetd2', 'last-corridor/hall-1', 1200, 550);
	addLuaSprite('streetd2', false);
	scaleObject('streetd2', 7.2, 7,.2);
    setProperty('streetd2.visible', true)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

	setProperty('streetd1.antialiasing', false)
	setProperty('streetd2.antialiasing', false)

	setProperty('streetd2.visible', false)
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('streetd2.visible', true)
			setProperty('streetd1.visible', false)
			doTweenColor('badapplexd', 'boyfriend', 'FFFFFF', 1, 'linear')	
			doTweenColor('badapplexd1', 'dad', 'FFFFFF', 1, 'linear')
		end
		if value1 == 'elfondo2' then
			setProperty('streetd2.visible', false)
			setProperty('streetd1.visible', true)
			doTweenColor('badapplexd', 'boyfriend', '070101', 0.3, 'linear')	
			doTweenColor('badapplexd1', 'dad', '070101', 0.3, 'linear')
		end
	end
end