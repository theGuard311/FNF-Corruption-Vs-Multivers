function onCreate()


    makeLuaSprite('sky', 'Hate/Sky', -500, -500);
	addLuaSprite('sky', false);
	setProperty('sky.visible', true)
	scaleObject('sky', 10, 10);
	setLuaSpriteScrollFactor('sky', 0.9, 0.9);

	makeAnimatedLuaSprite('glitch', 'Hate/Glitch', 1, -500);
	addAnimationByPrefix('glitch', 'idle', 'Glitch Idle', 24, true);
	addLuaSprite('glitch', false);
	scaleObject('glitch', 8.5, 8.5);
	setProperty('glitch.visible', false)
	setProperty('glitch.antialiasing', false)

	makeAnimatedLuaSprite('error', 'Hate/Error', 500, -300);
	addAnimationByPrefix('error', 'idle', 'Error-Sans', 24, true);
	addLuaSprite('error', false);
	scaleObject('error', 6, 6);
	setProperty('error.visible', true)
	setProperty('error.antialiasing', false)


    makeLuaSprite('menu', 'Hate/Main-menu', 1, 1);
	addLuaSprite('menu', false);
	addLuaSprite('menu', false);
	scaleObject('menu', 8.5, 8.5);
	setLuaSpriteScrollFactor('menu', 1, 1);

    makeLuaSprite('menu-2', 'Hate/Main-menu2', 1, 1);
	addLuaSprite('menu-2', false);
	setProperty('menu-2.visible', false)
	scaleObject('menu-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('menu-2', 1, 1);


    makeLuaSprite('overlay', 'Hate/overlay', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', false)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('overlay-2', 'Hate/overlay-2', 1, 1);
	addLuaSprite('overlay-2', false);
	scaleObject('overlay-2', 8.5, 8.5);
	setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

	setProperty('sky.antialiasing', false)
	setProperty('menu.antialiasing', false)
	setProperty('menu-2.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo0' then
			setProperty('glitch.visible', false);
			setProperty('menu-2.visible', false);
			setProperty('menu.visible', true);
			setProperty('overlay.visible', fasle);
			setProperty('overlay-2.visible', true);
		end
		if value1 == 'elfondo1' then
			setProperty('glitch.visible', false);
			setProperty('menu-2.visible', false);
			setProperty('menu.visible', true);
			setProperty('overlay.visible', true);
			setProperty('overlay-2.visible', false);
		end
		if value1 == 'elfondo2' then
			setProperty('glitch.visible', true);
			setProperty('menu-2.visible', true);
			setProperty('menu.visible', false);
			setProperty('overlay.visible', false);
			setProperty('overlay-2.visible', false);
		end
	end
end