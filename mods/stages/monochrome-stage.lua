function onCreate()

    -- background shit

    makeLuaSprite('streetd', 'StageD1/no-bg', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
    	setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd', 1, 1);
	setProperty('streetd.antialiasing', false)

end