
function onCreate()

    makeLuaSprite('asriel', 'asriel-stage/asriel-stage', 1, 1);
	addLuaSprite('asriel', false);
	scaleObject('asriel', 8.5, 8.5);
	setLuaSpriteScrollFactor('asriel', 1, 1);

    makeLuaSprite('street', 'asriel-stage/hall-killer', 1, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('snow', 'asriel-stage/sans', 1, 1);
	addLuaSprite('snow', false);
	scaleObject('snow', 8.5, 8.5);
	setLuaSpriteScrollFactor('snow', 1, 1);

    makeLuaSprite('hall', 'asriel-stage/hall-2', 1, -190);
	addLuaSprite('hall', false);
	scaleObject('hall', 8.5, 8.5);
	setLuaSpriteScrollFactor('hall', 1, 1);

    makeLuaSprite('betty', 'asriel-stage/betty', 1, 1);
	addLuaSprite('betty', false);
	scaleObject('betty', 8.5, 8.5);
	setLuaSpriteScrollFactor('betty', 1, 1);

    makeLuaSprite('main', 'asriel-stage/Main-menu', 1, 1);
	addLuaSprite('main', false);
	scaleObject('main', 8.5, 8.5);
	setLuaSpriteScrollFactor('main', 1, 1);

    makeLuaSprite('overlay-3', 'asriel-stage/weebSky-3', 1, 1);
	addLuaSprite('overlay-3', true);
	scaleObject('overlay-3', 8.5, 8.5);
	setProperty('overlay-3.visible', true)
	setLuaSpriteScrollFactor('overlay-3', 1, 1);

    makeLuaSprite('overlay-2', 'asriel-stage/Hate-overlay', 1, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

    makeLuaSprite('overlay', 'asriel-stage/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

	setProperty('street.antialiasing', false)
	setProperty('snow.antialiasing', false)
	setProperty('hall.antialiasing', false)
	setProperty('betty.antialiasing', false)
	setProperty('main.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('overlay-2.antialiasing', false)
	setProperty('overlay-3.antialiasing', false)

	setProperty('snow.visible', false);
	setProperty('hall.visible', false);
	setProperty('betty.visible', false);
	setProperty('main.visible', false);
	setProperty('overlay-2.visible', false);
	setProperty('overlay-3.visible', false);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlay.visible', true);
			setProperty('street.visible', true);
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('asriel.visible', false);
		end
		if value1 == 'elfondo2' then
			setProperty('overlay.visible', false);
			setProperty('street.visible', true);
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('main.visible', false);
			setProperty('asriel.visible', false);
		end
		if value1 == 'elfondo3' then
			setProperty('overlay.visible', false);
			setProperty('street.visible', false);
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('main.visible', false);
			setProperty('asriel.visible', true);
		end
		if value1 == 'snowdin' then
			setProperty('overlay-3.visible', true);
			setProperty('snow.visible', true);
			setProperty('street.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('main.visible', false);
		end
		if value1 == 'hall' then
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('street.visible', false);
			setProperty('hall.visible', true);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('main.visible', false);
		end
		if value1 == 'betty' then
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('street.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', true);
			setProperty('overlay-2.visible', true);
			setProperty('main.visible', false);
		end
		if value1 == 'main' then
			setProperty('overlay-3.visible', false);
			setProperty('snow.visible', false);
			setProperty('street.visible', false);
			setProperty('hall.visible', false);
			setProperty('betty.visible', false);
			setProperty('overlay-2.visible', false);
			setProperty('main.visible', true);
		end
	end
end