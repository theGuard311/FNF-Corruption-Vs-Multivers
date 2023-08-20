function onCreate()
 
    makeLuaSprite('street-1', 'snow/snowding', 1, 1);
	addLuaSprite('street-1', false);
	scaleObject('street-1', 8.5, 8.5);
    setProperty('street-1.visible', true)
	setLuaSpriteScrollFactor('street-1', 1, 1);

    makeLuaSprite('street-4', 'snow/snowding-door-crack', 1, 1);
	addLuaSprite('street-4', false);
	scaleObject('street-4', 8.5, 8.5);
    setProperty('street-4.visible', false)
	setLuaSpriteScrollFactor('street-4', 1, 1);

    makeLuaSprite('street-5', 'snow/snowding-door-crack-2', 1, 1);
	addLuaSprite('street-5', false);
	scaleObject('street-5', 8.5, 8.5);
    setProperty('street-5.visible', false)
	setLuaSpriteScrollFactor('street-5', 1, 1);

    makeLuaSprite('street-3', 'snow/snowding-door', 1, 1);
	addLuaSprite('street-3', false);
	scaleObject('street-3', 8.5, 8.5);
    setProperty('street-3.visible', true)
	setLuaSpriteScrollFactor('street-3', 1, 1);

  makeLuaSprite('sky-1', 'snow/weebSky-3', 300, 150);
	addLuaSprite('sky-1', true);
    setProperty('sky-1.visible', true)
	scaleObject('sky-1', 7, 7);
	setLuaSpriteScrollFactor('sky-1', 1, 1);

    makeLuaSprite('overlay-1', 'snow/overlay-2', 200, 150);
	addLuaSprite('overla-1', true);
	scaleObject('overla-1', 7.5, 7.5);
    setProperty('overlay-1.visible', true)
	setLuaSpriteScrollFactor('overlay-1', 1, 1);

    makeLuaSprite('street-2', 'snow/weebStreet', 1, 1);
	addLuaSprite('street-2', false);
	scaleObject('street-2', 8.5, 8.5);
    setProperty('street-2.visible', true)
	setLuaSpriteScrollFactor('street-2', 1, 1);

    makeLuaSprite('overlay-2', 'snow/overlay-3', 200, 150);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 7.5, 7.5);
    setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

	setProperty('street-1.antialiasing', false)
	setProperty('street-3.antialiasing', false)
	setProperty('street-4.antialiasing', false)
	setProperty('street-5.antialiasing', false)
	setProperty('overlay-1.antialiasing', true)
	setProperty('sky-1.antialiasing', true)
	setProperty('street-2.antialiasing', false)
	setProperty('overlay-2.antialiasing', true)

   	setProperty('overlay-2.visible', false)
    	setProperty('street-1.visible', false)
    	setProperty('street-2.visible', false)
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
   	setProperty('overlay-1.visible', true)
   	setProperty('overlay-2.visible', false)
    	setProperty('street-1.visible', false)
    	setProperty('street-2.visible', true)
		end
		if value1 == 'elfondo2' then
   	setProperty('overlay-1.visible', true)
   	setProperty('overlay-2.visible', false)
    	setProperty('street-1.visible', true)
    	setProperty('street-2.visible', false)
    	setProperty('street-3.visible', false)
    	setProperty('street-4.visible', false)
    	setProperty('street-5.visible', false)
		end
		if value1 == 'elfondo3' then
   	setProperty('overlay-1.visible', false)
   	setProperty('overlay-2.visible', true)
    	setProperty('street-1.visible', false)
    	setProperty('street-2.visible', true)
		end
		if value1 == 'door-crack' then
   	setProperty('overlay-1.visible', false)
   	setProperty('overlay-2.visible', false)
    	setProperty('street-1.visible', false)
    	setProperty('street-2.visible', false)
    	setProperty('street-3.visible', false)
    	setProperty('street-4.visible', true)
    	setProperty('street-5.visible', false)
		end
		if value1 == 'door-crack-2' then
   	setProperty('overlay-1.visible', false)
   	setProperty('overlay-2.visible', false)
    	setProperty('street-1.visible', false)
    	setProperty('street-2.visible', false)
    	setProperty('street-3.visible', false)
    	setProperty('street-4.visible', false)
    	setProperty('street-5.visible', true)
		end
	end
end