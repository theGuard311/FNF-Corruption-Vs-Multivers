function onCreate()

    -- background shit

    makeLuaSprite('streetd1', 'last-corridor/hall-2', 1200, 550);
	addLuaSprite('streetd1', false);
	scaleObject('streetd1', 7.2, 7,.2);
    setProperty('streetd1.visible', true)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

	setProperty('streetd1.antialiasing', false)
end