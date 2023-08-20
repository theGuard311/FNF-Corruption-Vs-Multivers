function onCreate()
 
    makeLuaSprite('streetd2', 'snow/snowding', 1, 1);
	addLuaSprite('streetd2', false);
	scaleObject('streetd2', 8.5, 8.5);
    setProperty('streetd2.visible', true)
	setLuaSpriteScrollFactor('streetd2', 1, 1);

  makeLuaSprite('skyd2', 'snow/weebSky-2', 300, 200);
	addLuaSprite('skyd2', true);
    setProperty('skyd2.visible', true)
	scaleObject('skyd2', 7, 7);
	setLuaSpriteScrollFactor('skyd2', 1, 1);

	setProperty('streetd2.antialiasing', false)
	setProperty('skyd2.antialiasing', true)
end