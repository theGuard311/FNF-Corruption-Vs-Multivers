local trailColors = {'FF0000', 'FF6A00', 'FFFF00', '00FF00', '0000FF', 'FF00FF'}
local curTrail = 1
local canShockerBG = false

function onCreate()	
	addHaxeLibrary('MP4Handler','vlc')
	addHaxeLibrary('Event','openfl.events')
	
	originalWindowY = getPropertyFromClass("openfl.Lib", "application.window.y")
	
	runTimer('colorTrailTimer', 0.1, 0)
	makeLuaSprite('videoSprite','', 0, 300)
	scaleObject('videoSprite', 5, 5)
	setProperty('videoSprite.antialiasing', false)
	setProperty('videoSprite.alpha', 0)
	addLuaSprite('videoSprite', false)
	
	makeLuaSprite('stars', 'stars', 0, -720)
	setObjectCamera('stars', 'hud')
	addLuaSprite('stars', false)
	setProperty('stars.alpha', 0)
	doTweenX('starsTweenX', 'stars', -1280, 2, 'linear')
	doTweenY('starsTweenY', 'stars', 0, 2, 'linear')
	
	makeLuaSprite('platform', 'platform', 500, 1120)
	scaleObject('platform', 8, 8)
	setProperty('platform.antialiasing', false)
	addLuaSprite('platform', false)
	
		runHaxeCode([[
		var filepath = Paths.video('rainbow');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
		runTimer('rainbowTimer', 93, 1)

    makeLuaSprite('street', 'asriel-stage/hall-killer', -700, 1);
	addLuaSprite('street', false);
	scaleObject('street', 8.5, 8.5);
	setLuaSpriteScrollFactor('streetd', 1, 1);

    makeLuaSprite('snow', 'asriel-stage/sans', -700, 1);
	addLuaSprite('snow', false);
	scaleObject('snow', 8.5, 8.5);
	setLuaSpriteScrollFactor('snow', 1, 1);

    makeLuaSprite('hall', 'asriel-stage/hall-2', -700, -190);
	addLuaSprite('hall', false);
	scaleObject('hall', 8.5, 8.5);
	setLuaSpriteScrollFactor('hall', 1, 1);

    makeLuaSprite('betty', 'asriel-stage/betty', -700, 1);
	addLuaSprite('betty', false);
	scaleObject('betty', 8.5, 8.5);
	setLuaSpriteScrollFactor('betty', 1, 1);

    makeLuaSprite('main', 'asriel-stage/Main-menu', -700, 1);
	addLuaSprite('main', false);
	scaleObject('main', 8.5, 8.5);
	setLuaSpriteScrollFactor('main', 1, 1);

    makeLuaSprite('overlay-3', 'asriel-stage/weebSky-3', -700, 1);
	addLuaSprite('overlay-3', true);
	scaleObject('overlay-3', 8.5, 8.5);
	setProperty('overlay-3.visible', true)
	setLuaSpriteScrollFactor('overlay-3', 1, 1);

    makeLuaSprite('overlay-2', 'asriel-stage/Hate-overlay', -700, 1);
	addLuaSprite('overlay-2', true);
	scaleObject('overlay-2', 8.5, 8.5);
	setProperty('overlay-2.visible', true)
	setLuaSpriteScrollFactor('overlay-2', 1, 1);

    makeLuaSprite('overlay', 'asriel-stage/overlay-2', -700, 1);
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

function onUpdatePost()
	runHaxeCode([[
		var video = getVar('video');
		game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);
		video.volume = FlxG.sound.volume + 0.4;
		if(game.paused)video.pause();
		]])
end

local rotInd = 0
local canFly = false
local canWindow = false

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

	if value1 == 'elfondo3' then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			canFly = true
			canWindow = true
			setProperty('videoSprite.alpha', 1)
			setProperty('platform.alpha', 0)
			setProperty('stars.alpha', 1)
			setProperty('street.visible', false);
			canShockerBG = true
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
	if value1 == 'stars-off' then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
end
	if value1 == 'stars-on' then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 1)
			canWindow = true
end
	if value1 == 'elfondo1' then
			cameraFlash('other', 'FFFFFF', 0.5, true)
			canFly = false
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
			triggerEvent('Camera Follow Pos', '', '')
			setProperty('videoSprite.alpha', 0)
			setProperty('stars.alpha', 0)
			canShockerBG = false
end
	if value1 == 'final' then
			canWindow = false
			setPropertyFromClass("openfl.Lib", "application.window.y", originalWindowY)
			cameraFlash('other', 'FFFFFF', 0.5, true)
			setProperty('stars.alpha', 0)
			canShockerBG = false
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'colorTrailTimer' then
	if curTrail ~= 7 then
		curTrail = curTrail + 1
	else
		curTrail = 1
end
end
	if tag == 'rainbowTimer' then
		runHaxeCode([[
		var filepath = Paths.video('rainbow');
		var video = new MP4Handler();
		video.playVideo(filepath);
		video.visible = false;
		setVar('video',video);
		FlxG.stage.removeEventListener('enterFrame', video.update); 
		]])
end
end

function onTweenCompleted(tag)
		if tag == 'starsTweenX' then
			setProperty('stars.x', 0)
			setProperty('stars.y', -720)
			doTweenX('starsTweenX', 'stars', -1280, 2, 'linear')
			doTweenY('starsTweenY', 'stars', 0, 2, 'linear')
end
end

local beatBG = 1

function onBeatHit()
	if canShockerBG == true then
	if beatBG == 1 or beatBG == 3 then
		makeLuaSprite('shockerBG', 'shocker', getRandomInt(-750, 1500), -400)
		setProperty('shockerBG.antialiasing', false)
		scaleObject('shockerBG', 10, 10)
		setProperty('shockerBG.alpha', 1)
		doTweenColor('shockerBGTweenColor', 'shockerBG', trailColors[getRandomInt(1, 6)], 0.001, 'linear')
		addLuaSprite('shockerBG', true)
		doTweenAlpha('shockerBGTweenAlpha', 'shockerBG', 0, 0.2, 'linear')
end
	if beatBG < 4 then
		beatBG = beatBG + 1
	else
		beatBG = 1
end
end
end