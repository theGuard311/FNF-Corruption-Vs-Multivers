--coded by Laztrix & Nickobelit
local yourtriallife = 100000
function onCreate()
    makeLuaSprite('gradient', 'RedGrad', -70, -50);
    setObjectCamera('gradient', 'other');
    setScrollFactor('gradient', 0, 0);
    scaleObject('gradient', 1.15, 1.15)
    addLuaSprite('gradient', true);
    setProperty('gradient.alpha', 0.0);
    
    makeLuaSprite('blueBar','', 56, 205);
    makeGraphic('blueBar',15,330,'FFFF00')
    scaleObject('blueBar', 1,1)
    setProperty('blueBar.alpha',1)
    setObjectCamera("blueBar", 'hud')
    addLuaSprite('blueBar', false);
   
    makeLuaSprite('lightblueBar','', 56, 535);
    makeGraphic('lightblueBar',15,350,'000000')
    scaleObject('lightblueBar', 1,0.1)
    setProperty('lightblueBar.alpha',1)
    setObjectCamera("lightblueBar", 'hud')
    addLuaSprite('lightblueBar', false);

    makeAnimatedLuaSprite('freezeBar', 'UI/base/Thermometer', 20, 190);
    addAnimationByPrefix('freezeBar', 'idle1', 'Therm1', 24, false);
    addAnimationByPrefix('freezeBar', 'idle2', 'Therm2', 24, false);
    addAnimationByPrefix('freezeBar', 'idle3', 'Therm3', 24, false);
    scaleObject('freezeBar', 1,1);
    addLuaSprite('freezeBar', true);
    setObjectCamera("freezeBar", 'hud')
        
    playAnim('freezeBar', 'idle1',true); 

end
local hardp = false
local mechanic = true
local canfreeze = true
function onCreatePost()
    if difficulty == 1 then
        hardp = true
    end
    if botPlay then
        mechanic = false
    end
end
function onUpdatePost(elapsed)
    setProperty('fog.alpha',getProperty('lightblueBar.scale.y') * 1)

    if getProperty('lightblueBar.scale.y') > 0.45 and getProperty('lightblueBar.scale.y') < 0.7 then
        playAnim('freezeBar', 'idle2',true); 
	doTweenAlpha('2Tw','gradient', 0.5, 0.4,'linear')
    elseif getProperty('lightblueBar.scale.y') > 0.7 then
        playAnim('freezeBar', 'idle3',true); 
	doTweenAlpha('3Tw','gradient', 1, 0.4,'linear')
    elseif getProperty('lightblueBar.scale.y') < 0.45 then
        playAnim('freezeBar', 'idle1',true); 
	doTweenAlpha('Tw','gradient', 0, 0.4,'linear')
    end

if keyJustPressed('space') then 

    if mechanic then
        canfreeze = false
        runTimer('idle', 1.4)
        if getProperty('lightblueBar.y') < 550 then
        doTweenY('lightbluey','lightblueBar',getProperty('lightblueBar.y')+50,1,'expoOut')
        end
        if getProperty('lightblueBar.scale.y') > 0.2 then
        doTweenY('lightblueya','lightblueBar.scale',getProperty('lightblueBar.scale.y')-0.30,1,'expoOut')
        end
    end
--debugPrint("no way its working")
end

if getProperty('typhlosion.animation.curAnim.name') == 'attack' then
    if getProperty('typhlosion.animation.curAnim.finished') then
        playAnim('typhlosion','idle',true)
    end
end
end


function onBeatHit()
    if curBeat % 2 == 0 and getProperty('typhlosion.animation.curAnim.name') == 'idle' then
		playAnim('typhlosion','idle',true)
	end
    if mechanic then
if curBeat % 1 == 0 then
   -- debugPrint(getProperty('lightblueBar.scale.y'))  -- i can see the value shit
   if not hardp then
    setProperty('health',getProperty('health')- 0.06 * getProperty('lightblueBar.scale.y'))
   else
    setProperty('health',getProperty('health')- 0.08 * getProperty('lightblueBar.scale.y'))
   end

    if canfreeze then
        setProperty('lightblueBar.y',getProperty('lightblueBar.y')-1.8)
        setProperty('lightblueBar.scale.y',getProperty('lightblueBar.scale.y')+0.01)
    end
end
end
end

function onTweenCompleted(t)
    if t == 'lightbluey' then
        canfreeze = true
    end
end


