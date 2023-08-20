function onCreate()

    makeLuaSprite('street', 'file1/whitte', 1, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('street', 1, 1);

    makeLuaSprite('skyd', 'soul-stage/Sky-1', 1, 1);
	addLuaSprite('skyd', false);
	setProperty('skyd.visible', true)
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 0.9, 0.9);

    makeLuaSprite('streetd-3', 'soul-stage/bg-3', 1, 1);
	addLuaSprite('streetd-3', false);
	scaleObject('streetd-3', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('streetd', 'soul-stage/bg', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('overlay', 'soul-stage/overlay', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('streetd-2', 'soul-stage/bg-2', 1, 1);
	addLuaSprite('streetd-2', false);
	scaleObject('streetd-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

   makeAnimatedLuaSprite('static','menu_static', -500, 1)
        addAnimationByPrefix('static','idle','menu-static',24,true)
	addLuaSprite('static', true);
	scaleObject('static', 2, 2);
	setLuaSpriteScrollFactor('static', 1, 1);
	setProperty('static.alpha','1', targetAlpha);
	setObjectCamera('static', 'other');

	setProperty('skyd.antialiasing', false)
	setProperty('streetd.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('streetd-2.antialiasing', false)
	setProperty('streetd-3.antialiasing', false)

	setProperty('overlay-2.visible', false)
	setProperty('streetd-2.alpha', 0)
	setProperty('streetd-3.visible', false)
	setProperty('street-4.visible', false)
	setProperty('static.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('streetd.visible', true);
			setProperty('streetd-3.visible', false);
			setProperty('overlay.visible', true)
			setProperty('static.visible', false)
		doTweenAlpha('2Tw','streetd-2',0,1.8,'linear')
		end
		if value1 == 'elfondo2' then
			setProperty('streetd-3.visible', false);
			setProperty('overlay.visible', true)
			setProperty('static.visible', false)
		doTweenAlpha('1Tw','streetd-2',1,1.8,'linear')
		end
		if value1 == 'elfondo3' then
			setProperty('streetd-3.visible', true);
			setProperty('overlay.visible', true)
		doTweenAlpha('3Tw','streetd',0,2.8,'linear')
		doTweenAlpha('4Tw','streetd-2',0,2.8,'linear')
		end
		if value1 == 'elfondo4' then
			setProperty('overlay.visible', false)
			setProperty('streetd.visible', true);
			setProperty('static.visible', true)
			setProperty('overlay-2.alpha','0', targetAlpha);
		doTweenAlpha('Tw','static',0.5,2.8,'linear')
		end
		if value1 == '1' then
		doTweenColor('badapplexd', 'boyfriend', '000000', 1, 'linear')
		end
		if value1 == '2' then
		doTweenColor('badapplexd3', 'dad', '000000', 1, 'linear')
		end
	end
end