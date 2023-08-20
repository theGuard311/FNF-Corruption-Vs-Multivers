function onCreate()


    makeLuaSprite('skyd-2', 'soul-stage/Sky-2', 1, 1);
	addLuaSprite('skyd-2', false);
	scaleObject('skyd-2', 7, 7);
	setLuaSpriteScrollFactor('skyd-2', 0.9, 0.9);

    makeLuaSprite('skyd', 'soul-stage/Sky-1', 1, 1);
	addLuaSprite('skyd', false);
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 0.9, 0.9);

    makeLuaSprite('streetd', 'soul-stage/bg', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('overlay', 'soul-stage/overlay', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('streetd-2', 'soul-stage/bg-4', 1, 1);
	addLuaSprite('streetd-2', false);
	scaleObject('streetd-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd-2', 1, 1);

    makeLuaSprite('streetd-3', 'soul-stage/bg-3', 1, 1);
	addLuaSprite('streetd-3', false);
	scaleObject('streetd-3', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

	setProperty('skyd-2.antialiasing', false)
	setProperty('skyd.antialiasing', false)
	setProperty('streetd.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('streetd-2.antialiasing', false)
	setProperty('streetd-3.antialiasing', false)

	setProperty('streetd.visible', false)
	setProperty('streetd-2.visible', false)
	setProperty('skyd-2.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('skyd.visible', false);
			setProperty('skyd-2.visible', false);
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', true);
			setProperty('streetd-3.visible', false);
		end
		if value1 == 'elfondo2' then
			setProperty('skyd.visible', true);
			setProperty('skyd-2.visible', false);
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', false);
			setProperty('streetd-3.visible', true);
		end
		if value1 == 'elfondo3' then
			setProperty('skyd.visible', false);
			setProperty('skyd-2.visible', true);
			setProperty('streetd-2.visible', true);
			setProperty('streetd.visible', false);
			setProperty('streetd-3.visible', false);
		end
	end
end