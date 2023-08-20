function onCreate()


    makeLuaSprite('street', 'file1/Past-menu', 1, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('overlay', 'asriel-stage/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('street-2', 'asriel-stage/hall-circle', 1, 1);
	addLuaSprite('street-2', false);
	scaleObject('street-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

	setProperty('street.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('street-2.antialiasing', false)
	setProperty('street-3.antialiasing', false)

	setProperty('street-2.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('street-2.visible', false);
			setProperty('street.visible', true);
		end
		if value1 == 'elfondo2' then
			setProperty('street-2.visible', true);
			setProperty('street.visible', false);
		end
	end
end