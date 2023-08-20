function onCreate()
 
    makeLuaSprite('backschoold2', 'snow/weebSchool', 280,20);
	addLuaSprite('backschoold2', false);
    setProperty('backschoold2.visible', true)
	scaleObject('backschoold2', 7, 7);
	setLuaSpriteScrollFactor('backschoold2', 1, 1);

    makeLuaSprite('streetd2', 'snow/weebStreet', 1, 1);
	addLuaSprite('streetd2', false);
	scaleObject('streetd2', 8.5, 8.5);
    setProperty('streetd2.visible', true)
	setLuaSpriteScrollFactor('streetd2', 1, 1);

  makeLuaSprite('skyd2', 'snow/weebSky-2', 300, 200);
	addLuaSprite('skyd2', true);
    setProperty('skyd2.visible', true)
	scaleObject('skyd2', 7, 7);
	setLuaSpriteScrollFactor('skyd2', 1, 1);

    makeAnimatedLuaSprite('snow', 'snow/snow', -150,-500);
	addAnimationByPrefix('snow', 'fall', 'Snow Falling', 20, true);
	scaleObject('snow', 0.6, 0.6);
	addLuaSprite('snow');
	setObjectCamera('snow', 'other');

    makeAnimatedLuaSprite('snow-2', 'snow/snow', -150,-1000);
	addAnimationByPrefix('snow-2', 'fall', 'Snow Falling', 20, true);
	scaleObject('snow-2', 0.6, 0.6);
	addLuaSprite('snow-2');
	setObjectCamera('snow-2', 'other');

    makeAnimatedLuaSprite('snow-3', 'snow/snow', -150,-1500);
	addAnimationByPrefix('snow-3', 'fall', 'Snow Falling', 20, true);
	scaleObject('snow-3', 0.6, 0.6);
	addLuaSprite('snow-3');
	setObjectCamera('snow-3', 'other');

    makeAnimatedLuaSprite('scenes', 'scenes', -160, -90);
	addAnimationByPrefix('scenes', '1', 'frisk', 30, false);
	addAnimationByPrefix('scenes', '2', 'asrielchara', 30, false);
	addAnimationByPrefix('scenes', '3', 'sswapasriel', 30, false);
	addAnimationByPrefix('scenes', '4', 'hategaster', 30, false);
	addAnimationByPrefix('scenes', '5', 'sans', 30, false);
	addAnimationByPrefix('scenes', '6', 'soul', 30, false);
	addAnimationByPrefix('scenes', '7', 'lost', 30, false);
	addAnimationByPrefix('scenes', '8', 'player', 30, false);
	scaleObject('scenes', 1.18,1.18);
	addLuaSprite('scenes', true);
	setLuaSpriteScrollFactor('scenes', 0, 0);

	setProperty('streetd2.antialiasing', false)
	setProperty('scenes.visible', false)
	setProperty('backschoold2.antialiasing', true)
	setProperty('skyd2.antialiasing', true)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'elfondo1' then
			setProperty('scenes.visible', true)
			setProperty('snow.visible', false)
			setProperty('snow-2.visible', false)
			setProperty('snow-3.visible', false)
		end
		if value1 == 'elfondo2' then
			setProperty('scenes.visible', false)
			setProperty('snow.visible', true);
			setProperty('snow-2.visible', true);
			setProperty('snow-3.visible', true);
		end
	end
end