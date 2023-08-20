function onCreate()

    makeLuaSprite('backschoold', 'snow/weebSchool', 280,20);
	addLuaSprite('backschoold', false);
    setProperty('backschoold.visible', true)
	scaleObject('backschoold', 7, 7);
	setLuaSpriteScrollFactor('backschoold', 1, 1);

    makeLuaSprite('streetd', 'snow/weebStreet', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
    setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd', 1, 1);

	setProperty('backschoold.antialiasing', true)
	setProperty('streetd.antialiasing', false)

end