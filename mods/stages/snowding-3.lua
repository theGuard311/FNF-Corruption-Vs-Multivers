function onCreate()
 
    makeLuaSprite('backschoold3', 'snow/weebSchool', 280,20);
	addLuaSprite('backschoold3', false);
    setProperty('backschoold3.visible', true)
	scaleObject('backschoold3', 7, 7);
	setLuaSpriteScrollFactor('backschoold3', 1, 1);

    makeLuaSprite('streetd3', 'snow/weebStreet', 1, 1);
	addLuaSprite('streetd3', false);
	scaleObject('streetd3', 8.5, 8.5);
    setProperty('streetd3.visible', true)
	setLuaSpriteScrollFactor('streetd3', 1, 1);

  makeLuaSprite('skyd3', 'snow/weebSky-3', 300, 200);
	addLuaSprite('skyd3', true);
    setProperty('skyd3.visible', true)
	scaleObject('skyd3', 7, 7);
	setLuaSpriteScrollFactor('skyd3', 1, 1);

    makeLuaSprite('overlayd', 'snow/overlay-2', 200, 150);
	addLuaSprite('overlayd', true);
	scaleObject('overlayd', 7.5, 7.5);
    setProperty('overlayd.visible', true)
	setLuaSpriteScrollFactor('overlayd', 1, 1);

    makeAnimatedLuaSprite('snow', 'snow/snow', -150,-500);
	addAnimationByPrefix('snow', 'fall', 'Snow Falling', 30, true);
	scaleObject('snow', 0.6, 0.6);
	addLuaSprite('snow');
	setObjectCamera('snow', 'other');

    makeAnimatedLuaSprite('snow-2', 'snow/snow', -150,-1000);
	addAnimationByPrefix('snow-2', 'fall', 'Snow Falling', 30, true);
	scaleObject('snow-2', 0.6, 0.6);
	addLuaSprite('snow-2');
	setObjectCamera('snow-2', 'other');

    makeAnimatedLuaSprite('snow-3', 'snow/snow', -150,-1500);
	addAnimationByPrefix('snow-3', 'fall', 'Snow Falling', 30, true);
	scaleObject('snow-3', 0.6, 0.6);
	addLuaSprite('snow-3');
	setObjectCamera('snow-3', 'other');

	setProperty('streetd3.antialiasing', false)
	setProperty('backschoold3.antialiasing', true)
	setProperty('overlayd3.antialiasing', true)
	setProperty('skyd3.antialiasing', true)
end