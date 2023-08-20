function onCreate()

    makeLuaSprite('backschoold', 'snow/weebSchool', 280,20);
	addLuaSprite('backschoold', false);
    setProperty('backschoold.visible', true)
	scaleObject('backschoold', 7, 7);
	setLuaSpriteScrollFactor('backschoold', 1, 1);

    makeLuaSprite('streetd', 'snow/weebStreet', 1, 1);
	addLuaSprite('streetd', false);
	scaleObject('streetd', 8.5, 8.5);
    setProperty('streetd.visible', true)
	setLuaSpriteScrollFactor('streetd', 1, 1);

   makeAnimatedLuaSprite('azzy','characters/corrupted-0',300, 150)
        addAnimationByPrefix('azzy','Idle','Chara Idle instance 1',24,true)
	addLuaSprite('azzy', false);
	scaleObject('azzy', 6.2, 6.2);
	setLuaSpriteScrollFactor('azzy', 1, 1);

    makeLuaSprite('skyd', 'snow/weebSky-3', 300, 200);
	addLuaSprite('skyd', true);
    setProperty('skyd.visible', true)
	scaleObject('skyd', 7, 7);
	setLuaSpriteScrollFactor('skyd', 0.9, 0.9);

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

	setProperty('overlayd.antialiasing', true)
	setProperty('skyd.antialiasing', true)
	setProperty('backschoold.antialiasing', true)
	setProperty('streetd.antialiasing', false)
	setProperty('azzy.antialiasing', false)
end