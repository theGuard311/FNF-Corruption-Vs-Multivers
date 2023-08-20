function onCreate()


    makeLuaSprite('skyd', 'soul-stage/Sky-1', 1, 1);
	addLuaSprite('skyd', false);
	setProperty('skyd.visible', true)
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 0.9, 0.9);

    makeLuaSprite('streetd', 'soul-stage/bg', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);


   makeAnimatedLuaSprite('azzy','characters/Asriel',300, 150)
        addAnimationByPrefix('azzy','Idle','Asriel Idle instance 1',24,true)
	addLuaSprite('azzy', false);
	scaleObject('azzy', 6.2, 6.2);
	setLuaSpriteScrollFactor('azzy', 1, 1);
	setProperty('azzy.alpha','0.4', targetAlpha);

    makeLuaSprite('overlay', 'soul-stage/overlay', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

   makeLuaSprite('overlay-2', 'soul-stage/overlay-3', 1, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

    makeLuaSprite('streetd-2', 'soul-stage/bg-2', 1, 1);
	addLuaSprite('streetd-2', false);
	scaleObject('streetd-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('streetd-3', 'soul-stage/bg-3', 1, 1);
	addLuaSprite('streetd-3', false);
	scaleObject('streetd-3', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

	setProperty('skyd.antialiasing', false)
	setProperty('streetd.antialiasing', false)
	setProperty('azzy.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('streetd-2.antialiasing', false)
	setProperty('streetd-3.antialiasing', false)

	setProperty('azzy.visible', false)
	setProperty('overlay-2.visible', false)
	setProperty('streetd-2.visible', false)
	setProperty('streetd-3.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', true);
			setProperty('streetd-3.visible', false);
			setProperty('overlay.visible', true)
			setProperty('overlay-2.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('streetd-2.visible', true);
			setProperty('streetd.visible', false);
			setProperty('streetd-3.visible', false);
			setProperty('overlay.visible', true)
			setProperty('overlay-2.visible', false)
		end
		if value1 == 'elfondo3' then
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', false);
			setProperty('streetd-3.visible', true);
			setProperty('overlay.visible', true)
			setProperty('overlay-2.visible', false)
		end
		if value1 == 'elfondo4' then
			setProperty('streetd-2.visible', false);
			setProperty('streetd.visible', true);
			setProperty('streetd-3.visible', false);
			setProperty('overlay.visible',false)
			setProperty('overlay-2.visible', true)
		end
		if value1 == 'azzy' then
			setProperty('azzy.visible', true);
		end
	end
end