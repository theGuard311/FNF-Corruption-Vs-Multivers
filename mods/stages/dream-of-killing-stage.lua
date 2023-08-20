function onCreate()


    makeLuaSprite('street', 'extras/true-lab-2', 1, -100);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('street', 1, 1);

    makeLuaSprite('street2', 'extras/DT Extractor', 985, -380);
	addLuaSprite('street2', false);
	scaleObject('street2', 8.5, 8.5);
	setLuaSpriteScrollFactor('street2', 1.1, 1);

    makeAnimatedLuaSprite('street3','extras/DT Extractor-2', 985, -380)
        addAnimationByPrefix('street3','Idle','DT Extractor-2 ',20,true)
	addLuaSprite('street3', false);
	setLuaSpriteScrollFactor('street3', 1.1, 1);
	scaleObject('street3', 8.5, 8.5)

    makeLuaSprite('overlay', 'asriel-stage/overlay-2', 1, 1);
	addLuaSprite('overlay', true);
	scaleObject('overlay', 8.5, 8.5);
	setProperty('overlay.visible', true)
	setLuaSpriteScrollFactor('overlay', 1, 1);

    makeAnimatedLuaSprite('overlayd2','asriel-stage/overlay-anim-2',-50, 0)
        addAnimationByPrefix('overlayd2','Idle','Spikes',50,true)
	addLuaSprite('overlayd2', true);
	scaleObject('overlayd2', 1, 1);
	setLuaSpriteScrollFactor('overlayd2', 1, 1);
	scaleObject('overlayd2', 0.8, 0.8)
	setObjectCamera('overlayd2', 'hud')

	setProperty('street.antialiasing', false)
	setProperty('street2.antialiasing', false)
	setProperty('street3.antialiasing', false)
	setProperty('overlay.antialiasing', false)

	setProperty('overlayd2.visible', false)
	setProperty('street3.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('overlayd2.visible', false)
			setProperty('street.visible', true)
			setProperty('street.visible', true)
			setProperty('street3.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('overlayd2.visible', false)
			setProperty('street.visible', false)
			setProperty('street2.visible', false)
			setProperty('street3.visible', false)
		end
		if value1 == 'elfondo3' then
			setProperty('overlayd2.visible', true)
			setProperty('street.visible', true)
			setProperty('street2.visible', false)
			setProperty('street3.visible', true)
		end
	end
end