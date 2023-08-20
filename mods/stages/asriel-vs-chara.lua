function onCreate()

    makeLuaSprite('sky', 'file1/Sky', -500, -500);
	addLuaSprite('sky', false);
	setProperty('sky.visible', true)
	scaleObject('sky', 10, 10);
	setLuaSpriteScrollFactor('sky', 0.9, 0.9);

	makeAnimatedLuaSprite('glitch', 'file1/Glitch', 1, -500);
	addAnimationByPrefix('glitch', 'idle', 'Glitch Idle', 24, true);
	addLuaSprite('glitch', false);
	scaleObject('glitch', 8.5, 8.5);
	setProperty('glitch.visible', false)
	setProperty('glitch.antialiasing', false)

    makeLuaSprite('menu', 'file1/Main-menu', 1, 1);
	addLuaSprite('menu', false);
	scaleObject('menu', 8.5, 8.5);
	setLuaSpriteScrollFactor('menu', 1, 1);

    makeLuaSprite('menu-2', 'file1/Main-menu-2', 1, 1);
	addLuaSprite('menu-2', false);
	setProperty('menu-2.visible', false)
	scaleObject('menu-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('menu-2', 1, 1);

    makeLuaSprite('menu-0', 'file1/Past-menu', 1, 1);
	addLuaSprite('menu-0', false);
	setProperty('menu-0.visible', false)
	scaleObject('menu-0', 8.5, 8.5);
	setLuaSpriteScrollFactor('menu-0', 1, 1);

    makeLuaSprite('overlay', 'file1/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setLuaSpriteScrollFactor('overlay', 1, 1);

	setProperty('sky.antialiasing', false)
	setProperty('menu.antialiasing', false)
	setProperty('menu-2.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('menu-0.antialiasing', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo0' then
			setProperty('glitch.visible', false);
			setProperty('menu-2.visible', false);
			setProperty('menu.visible', false);
			setProperty('overlay.visible', true);
			setProperty('menu-0.visible', true);
    			setProperty('timeBarBG.visible', true)
    			setProperty('timeBar.visible', true)
    			setProperty('timeTxt.visible', true)
		end
		if value1 == 'elfondo1' then
			setProperty('glitch.visible', false);
			setProperty('menu-2.visible', false);
			setProperty('menu.visible', true);
			setProperty('overlay.visible', true);
			setProperty('menu-0.visible', false);
    			setProperty('timeBarBG.visible', true)
    			setProperty('timeBar.visible', true)
    			setProperty('timeTxt.visible', true)
		end
		if value1 == 'elfondo2' then
			setProperty('glitch.visible', true);
			setProperty('menu-2.visible', true);
			setProperty('menu.visible', false);
			setProperty('overlay.visible', false);
			setProperty('menu-0.visible', false);
    			setProperty('timeBarBG.visible', true)
   			setProperty('timeBar.visible', false)
    			setProperty('timeTxt.visible', false)
		end
	end
end