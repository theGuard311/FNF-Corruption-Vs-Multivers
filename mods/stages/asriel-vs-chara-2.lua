function onCreate()


    makeLuaSprite('street', 'file1/whitte', 1, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('street', 1, 1);


    makeLuaSprite('overlay-2', 'file1/overlay-3', 1, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

    makeLuaSprite('overlay', 'file1/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeLuaSprite('street-2', 'file1/Main-menu', 1, 1);
	addLuaSprite('street-2', false);
	scaleObject('street-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('street-3', 'file1/whitte', 1, 1);
	addLuaSprite('street-3', true);
	scaleObject('street-3', 8.5, 8.5);
	setLuaSpriteScrollFactor('street-3', 1, 1);
	setProperty('static.alpha','1', targetAlpha);

   makeAnimatedLuaSprite('static','menu_static', -300, 1)
        addAnimationByPrefix('static','idle','menu-static',24,true)
	addLuaSprite('static', true);
	scaleObject('static', 3.5, 3.5);
	setLuaSpriteScrollFactor('static', 1, 1);
	setProperty('static.alpha','1', targetAlpha);

	setProperty('street.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)
	setProperty('static.antialiasing', false)
	setProperty('street-2.antialiasing', false)
	setProperty('street-3.antialiasing', false)

	setProperty('street.visible', false)
	setProperty('street-3.visible', false)
	setProperty('overlay.visible', false)
	setProperty('static.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlay.visible', true)
			setProperty('overlay-2.visible', false)
			setProperty('street-2.visible', true);
			setProperty('street.visible', false);
			setProperty('street-3.visible', false);
			setProperty('static.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('overlay.visible', true)
			setProperty('overlay-2.visible', true)
			setProperty('street-2.visible', true);
			setProperty('street.visible', false);
			setProperty('street-3.visible', false);
			setProperty('static.visible', false)
		end

		if value1 == 'elfondo3' then
			setProperty('overlay.visible', false)
			setProperty('overlay-2.visible', false)
			setProperty('street-2.visible', false);
			setProperty('street.visible', true);
			setProperty('street-3.visible', true);
			setProperty('static.visible', true)
		doTweenAlpha('Tw','static',0.5,2.8,'linear')
		doTweenAlpha('2Tw','street-3',0.4,2.8,'linear')
		end
	end
end