function onCreate()
 
    makeLuaSprite('backschoold', 'frostbite/Fear-Hate-sky', 1, 1);
	addLuaSprite('backschoold', false);
    setProperty('backschoold.visible', true)
	scaleObject('backschoold', 7, 7);
	setLuaSpriteScrollFactor('backschoold', 0.7, 0.7);

    makeLuaSprite('streetd', 'frostbite/Fear-Hate-stage', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
    setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd3', 1, 1);

  makeLuaSprite('skyd', 'frostbite/Fear-Hate-overlay', 300, 200);
	addLuaSprite('skyd', true);
    setProperty('skyd.visible', true)
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 1, 1);

    makeLuaSprite('backschoold3', 'frostbite/Hate-sky', 1, 1);
	addLuaSprite('backschoold3', false);
	scaleObject('backschoold3', 7, 7);
	setLuaSpriteScrollFactor('backschoold3', 0.7, 0.7);

    makeLuaSprite('streetd3', 'frostbite/Hate-stage', 1, 1);
	addLuaSprite('streetd3', false);
	scaleObject('streetd3', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd3', 1, 1);

  makeLuaSprite('skyd3', 'frostbite/Hate-overlay', 300, 200);
	addLuaSprite('skyd3', true);
	scaleObject('skyd3', 7, 7);
	setLuaSpriteScrollFactor('skyd3', 1, 1);

    makeLuaSprite('overlay-2', 'frostbite/overlay-3', 1, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

	setProperty('streetd3.antialiasing', false)
	setProperty('backschoold3.antialiasing', true)
	setProperty('skyd3.antialiasing', true)
	setProperty('streetd.antialiasing', false)
	setProperty('backschoold.antialiasing', true)
	setProperty('skyd.antialiasing', true)

	setProperty('overlay-2.visible', false)
	setProperty('streetd3.visible', false)
	setProperty('backschoold3.visible', false)
	setProperty('skyd3.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlay-2.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('overlay-2.visible', true)
		end
		if value1 == 'elfondo0' then
			setProperty('streetd3.visible', true)
			setProperty('backschoold3.visible', true)
			setProperty('skyd3.visible', true)
			setProperty('streetd.visible', false)
			setProperty('backschoold.visible', false)
			setProperty('skyd.visible', false)
		end
		if value1 == 'elfondo4' then
			setProperty('streetd3.visible', false)
			setProperty('backschoold3.visible', false)
			setProperty('skyd3.visible', false)
			setProperty('streetd.visible', true)
			setProperty('backschoold.visible', true)
			setProperty('skyd.visible', true)
		end
	end
end