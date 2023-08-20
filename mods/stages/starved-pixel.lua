sprite = 'asriel-stage/sans'
size = -2600
startX = 1
startY = 1
duration = 1

function onCreate()
makeLuaSprite('streetd', 'asriel-stage/sans', 1, 1);
addLuaSprite('streetd', false);
scaleObject('streetd', 8.5, 8.5);
setProperty('streetd.visible', true)
setLuaSpriteScrollFactor('streetd', 1, 1);
setProperty('streetd.antialiasing', false)

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


makeLuaSprite(sprite .. '1', sprite, startX, startY)
addLuaSprite(sprite .. '1', false)
scaleObject(sprite .. '1', 8.5, 8.5);
setProperty('asriel-stage/sans1.antialiasing', false)
makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
addLuaSprite(sprite .. '2', false)
scaleObject(sprite .. '2', 8.5, 8.5);
setProperty('asriel-stage/sans2.antialiasing', false)

makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
addLuaSprite(sprite .. '1speed', false)
scaleObject(sprite .. '1speed', 8.5, 8.5);
setProperty('asriel-stage/sans1speed.antialiasing', false)
makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)
addLuaSprite(sprite .. '2speed', false)
scaleObject(sprite .. '2speed', 8.5, 8.5);
setProperty('asriel-stage/sans2speed.antialiasing', false)

setProperty('asriel-stage/sans1.alpha', 0)
setProperty('asriel-stage/sans2.alpha', 0)
setProperty('asriel-stage/sans1speed.alpha', 0)
setProperty('asriel-stage/sans2speed.alpha', 0)
scrollA()
scrollA2()
end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 2)
doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 2)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end

if tag == (sprite .. '2moveSpeed') then
scrollB2()
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function scrollB2()
doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 0.001)
doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 0.001)
end

function onUpdate(elapsed)
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
noteTweenX('bfTween2', 5, 205, 0.01, 'linear');
noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
noteTweenX('bfTween4', 7, 425, 0.01, 'linear');
noteTweenX('dadTween1', 0, 730, 0.01, 'linear');
noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
noteTweenX('dadTween3', 2, 955, 0.01, 'linear');
noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');

setProperty('Health.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		if value1 == 'elfondo1' then
			setProperty('asriel-stage/sans1.alpha', 0)
			setProperty('asriel-stage/sans2.alpha', 0)
			setProperty('streetd.visible', true);
		end
		if value1 == 'elfondo2' then
			setProperty('asriel-stage/sans1.alpha', 1)
			setProperty('asriel-stage/sans2.alpha', 1)
			setProperty('streetd.visible', false);
		end
	end
end