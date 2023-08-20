function onCreate()

    makeAnimatedLuaSprite('faces','asriel-stage/faces-anim', -870, -1500)
        addAnimationByPrefix('faces','Idle','faces-background instance 1',24,true)
	addLuaSprite('faces', false);
	scaleObject('faces', 8,5, 8.5);
	setLuaSpriteScrollFactor('faces', 1, 1);
	scaleObject('faces', 8.5, 8.5)

    makeAnimatedLuaSprite('faces-2','asriel-stage/faces-anim', -870, -1500)
        addAnimationByPrefix('faces-2','Idle','faces-angry-background instance 1',24,true)
	addLuaSprite('faces-2', false);
	scaleObject('faces-2', 8,5, 8.5);
	setLuaSpriteScrollFactor('faces-2', 1, 1);
	scaleObject('faces-2', 8.5, 8.5)

    makeLuaSprite('street-2', 'asriel-stage/hall-circle', 1, 1);
	addLuaSprite('street-2', false);
	scaleObject('street-2', 8.5, 8.5);
	setLuaSpriteScrollFactor('street-2', 1, 1);

    makeLuaSprite('overlay', 'asriel-stage/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

	setProperty('street-2.antialiasing', false)
	setProperty('overlay.antialiasing', false)
	setProperty('faces.antialiasing', false);
	setProperty('faces-2.antialiasing', false);

	setProperty('faces.visible', false);
	setProperty('faces-2.visible', false);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlay.visible', true);
			setProperty('faces.visible', false);
			setProperty('faces-2.visible', false);
		end
		if value1 == 'elfondo2' then
			setProperty('overlay.visible', false);
			setProperty('faces.visible', true);
			setProperty('faces-2.visible', false);
		end
		if value1 == 'elfondo3' then
			setProperty('overlay.visible', false);
			setProperty('faces.visible', false);
			setProperty('faces-2.visible', true);
		end
	end
end