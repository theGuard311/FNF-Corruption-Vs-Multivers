function onCreate()

    -- background shit

    makeLuaSprite('streetd1', 'last-corridor/hall-2', 1200, 550);
	addLuaSprite('streetd1', false);
	scaleObject('streetd1', 7.2, 7,.2);
    setProperty('streetd1.visible', true)
	setLuaSpriteScrollFactor('streetd1', 1, 1);

    makeLuaSprite('overlayd1', 'last-corridor/overlay-2', 1200, 550);
	addLuaSprite('overlayd1', true);
	scaleObject('overlayd1', 7.2, 7,.2);
    setProperty('overlayd1.visible', true)
	setLuaSpriteScrollFactor('overlayd1', 1, 1);

	setProperty('streetd1.antialiasing', false)
	setProperty('overlayd1.antialiasing', false)
end