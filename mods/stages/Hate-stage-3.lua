function onCreate()

    makeLuaSprite('street', 'file1/whitte', 1, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('street', 1, 1);
 
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

    makeLuaSprite('overlay-2', 'frostbite/overlay-3', 1, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('overlay-2', 1, 1);
	setProperty('overlay-2.alpha','0', targetAlpha);

    makeLuaSprite('street-3', 'file1/whitte', 1, 1);
	addLuaSprite('street-3', true);
	scaleObject('street-3', 8.5, 8.5);
	setLuaSpriteScrollFactor('street-3', 1, 1);
	setProperty('static.alpha','1', targetAlpha);

   makeAnimatedLuaSprite('static','menu_static', 1, 1)
        addAnimationByPrefix('static','idle','menu-static',24,true)
	addLuaSprite('static', true);
	scaleObject('static', 3.5, 3.5);
	setLuaSpriteScrollFactor('static', 1, 1);
	setProperty('static.alpha','1', targetAlpha);

	setProperty('overlay-2.antialiasing', false)
	setProperty('streetd.antialiasing', false)
	setProperty('backschoold.antialiasing', true)
	setProperty('skyd.antialiasing', true)

	setProperty('overlay-2.visible', false)
	setProperty('street.visible', false)
	setProperty('street-3.visible', false);
	setProperty('static.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('street.visible', false);
			setProperty('streetd.visible', true)
			setProperty('backschoold.visible', true)
			setProperty('skyd.visible', true)
			setProperty('street-3.visible', false);
			setProperty('static.visible', false)
			setProperty('overlay-2.alpha','0', targetAlpha);
		end
		if value1 == 'elfondo2' then
			setProperty('street.visible', false);
			setProperty('streetd.visible', true)
			setProperty('backschoold.visible', true)
			setProperty('skyd.visible', true)
			setProperty('street-3.visible', false);
			setProperty('static.visible', false)
			setProperty('overlay-2.visible', true)
		doTweenAlpha('3Tw','overlay-2',1,0.8,'linear')
		end
		if value1 == 'elfondo3' then
			setProperty('street.visible', true);
			setProperty('streetd.visible', false)
			setProperty('backschoold.visible', false)
			setProperty('skyd.visible', false)
			setProperty('overlay-2.visible', false)
			setProperty('static.visible', true)
		doTweenAlpha('Tw','static',0.5,2.8,'linear')
		doTweenAlpha('2Tw','street-3',0.4,2.8,'linear')
		end
	end
end