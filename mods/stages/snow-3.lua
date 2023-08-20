function onCreate()
 
    makeLuaSprite('street-1', 'snow/snowding', 1, 1);
	addLuaSprite('street-1', false);
	scaleObject('street-1', 8.5, 8.5);
    setProperty('street-1.visible', true)
	setLuaSpriteScrollFactor('street-1', 1, 1);

  makeLuaSprite('sky-1', 'snow/weebSky-3', 300, 200);
	addLuaSprite('sky-1', true);
    setProperty('sky-1.visible', true)
	scaleObject('sky-1', 7, 7);
	setLuaSpriteScrollFactor('sky-1', 1, 1);

   makeLuaSprite('overlay-2', 'snow/overlay-3', 200, 150);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 7.5, 7.5);
    setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

	setProperty('street-1.antialiasing', false)
	setProperty('sky-1.antialiasing', true)
	setProperty('overlay-2.antialiasing', true)

end
