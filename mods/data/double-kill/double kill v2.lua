local drains = {
    '0.01', --black drain
    '0.02', --black drain 2
    '0.03', --black drain final
    '0.005', --white drain
    '0.015', --both
    '0.025', --both 2
    '0.035' --both 3
}

local drainValue = drains[4]
local p1 = true
local p2 = false
local p3 = false
local shake = false

function onCreate()
    makeLuaSprite('blackbg','black',0,0)
    addLuaSprite('blackbg',false)
    scaleObject('blackbg',2,2)

    makeLuaSprite('overlay', 'airship/overlay ass dk', 50, 50);
	scaleLuaSprite('overlay', 1., 1.)
	addLuaSprite('overlay', true);
	setProperty('overlay.alpha', 0.5);

    makeLuaSprite('blackhudoverlay','black',0,0)
    addLuaSprite('blackhudoverlay',false)
    setObjectCamera('blackhudoverlay','hud')
    setProperty('blackhudoverlay.alpha',0)

    makeLuaSprite('airshiphall','bg',250,-400)
    addLuaSprite('airshiphall',false)
    setProperty('airshiphall.alpha',0)
    
    makeLuaSprite('airshipGradient','redGradient',250,-350)
    addLuaSprite('airshipGradient',true)
    setProperty('airshipGradient.alpha',0)
    scaleLuaSprite('airshipGradient',3,3)

    makeAnimatedLuaSprite('blacklegs','legs/blacklegs',1150,1100)
    scaleLuaSprite('blacklegs',1.3,1.3)
    addAnimationByPrefix('blacklegs','lesg','legs',24,true)
    addLuaSprite('blacklegs',false)

    makeAnimatedLuaSprite('bflegs','legs/bf_legs',3230,1210)
    addAnimationByPrefix('bflegs','lesg','run legs',24,true)
    addLuaSprite('bflegs',false)

    setProperty('blacklegs.alpha',0)
    setProperty('bflegs.alpha',0)

    --ending images
    makeLuaSprite('end1','end/1',0,0)
    setObjectCamera('end1','other')
    addLuaSprite('end1',false)

    makeLuaSprite('end2','end/2',0,0)
    setObjectCamera('end2','other')
    addLuaSprite('end2',false)

    makeLuaSprite('end3','end/3',0,0)
    setObjectCamera('end3','other')
    addLuaSprite('end3',false)

    makeLuaSprite('end4','end/4',0,0)
    setObjectCamera('end4','other')
    addLuaSprite('end4',false)

    makeLuaSprite('end5','end/5',0,0)
    setObjectCamera('end5','other')
    addLuaSprite('end5',false)

    makeLuaSprite('end6','end/6',0,0)
    setObjectCamera('end6','other')
    addLuaSprite('end6',false)

    setProperty('end1.alpha',0)
    setProperty('end2.alpha',0)
    setProperty('end3.alpha',0)
    setProperty('end4.alpha',0)
    setProperty('end5.alpha',0)
    setProperty('end6.alpha',0)
    
    setObjectOrder('overlay',20)

    setProperty('skipCountdown',true)

    --opt
    makeLuaSprite('blackbghud','black',-520,500)
    setObjectCamera('blackbghud','hud')
    addLuaSprite('blackbghud',false)
    scaleObject('blackbghud',0.25,0.05)
    setProperty('blackbghud.alpha',0.5)

    makeLuaText('opttext','Turn on low quality mode if you lag from the shader',500,-520,500)
    setTextSize('opttext',25)
    setTextFont('opttext','NeoRetroShadow.ttf')
    addLuaText('opttext',false)
end

function onSongStart()
    if not lowQuality then
        doTweenX('blackopthi','blackbghud',0,2,'expoInOut')
        doTweenX('opttexthi','opttext',0,2,'expoInOut')

        runTimer('byeOpt',5)
    end
end

function onCreatePost()
    setProperty('showComboNum', false)
    setProperty('showRating', false)

    setProperty('gf.alpha', 0);
    setProperty('boyfriend.alpha', 0);
    setProperty('dad.alpha', 0);
    setProperty('iconP1.alpha',0);
    setProperty('iconP2.alpha',0);
    setProperty('healthBarBG.alpha',0);
    setProperty('healthBar.alpha',0);
    setProperty('scoreTxt.alpha',0);

    if not lowQuality then
        initLuaShader("scroll")
        initLuaShader("bloom")
        makeLuaSprite("bloomShad")
        makeGraphic("bloomShad", screenWidth, screenHeight)
        setSpriteShader("bloomShad", "bloom")

        runHaxeCode([[
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject("bloomShad").shader)]);
        ]])
    end

    setSpriteShader('airshiphall',"scroll")
end

function onUpdate()
    setShaderFloat("airshiphall", "iTime", os.clock())

    --black white drains
    if getProperty('icon3.alpha') == 1 then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[1]

        runHaxeCode([[
            game.dad.healthColorArray = [58, 27, 79];
            game.reloadHealthBarColors();
        ]]);
    end
    if getProperty('icon3.alpha') == 0 then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[4]

        runHaxeCode([[
            game.dad.healthColorArray = [209, 210, 248];
            game.reloadHealthBarColors();
        ]]);
    end
    --black phases
    if getProperty('icon3.alpha') == 1 and p1 == true and p2 == false and p3 == false then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[1]

        runHaxeCode([[
            game.dad.healthColorArray = [58, 27, 79];
            game.reloadHealthBarColors();
        ]]);
    end
    if getProperty('icon3.alpha') == 1 and p1 == true and p2 == true and p3 == false then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[2]

        runHaxeCode([[
            game.dad.healthColorArray = [58, 27, 79];
            game.reloadHealthBarColors();
        ]]);
    end
    --black final drain
    if getProperty('iconP2.visible') == true and p1 == true and p2 == true and p3 == true then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[3]

        runHaxeCode([[
            game.dad.healthColorArray = [58, 27, 79];
            game.reloadHealthBarColors();
        ]]);
    end
    --both
    if getProperty('icon4.visible') == true and p1 == true and p2 == false and p3 == false then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[5]

        runHaxeCode([[
            game.dad.healthColorArray = [120, 120, 140];
            game.reloadHealthBarColors();
        ]]);
    end
    if getProperty('icon4.visible') == true and p1 == true and p2 == true and p3 == false then
        setTextColor('scoreTxt',rgbToHex(getProperty('dad.healthColorArray')))
        setTextColor('botplayTxt',rgbToHex(getProperty('dad.healthColorArray')))

        drainValue = drains[6]

        runHaxeCode([[
            game.dad.healthColorArray = [120, 120, 140];
            game.reloadHealthBarColors();
        ]]);
    end
end

function onStepHit()
    if curStep == 16 then
        doTweenAlpha('white', 'dad', 1, 1, 'linear')
    end
    if curStep == 80 then
        doTweenAlpha('bf', 'boyfriend', 1, 1, 'linear')
    end
    if curStep == 144 then
        doTweenAlpha('black', 'gf', 1, 1, 'linear')
    end
    if curStep == 272 then
        doTweenAlpha('iconp1fade', 'iconP1', 1, 1, 'linear')
        doTweenAlpha('iconp2fade', 'iconP2', 1, 1, 'linear')
        doTweenAlpha('healthbarbgfade', 'healthBarBG', 1, 1, 'linear')
        doTweenAlpha('healthbarfade', 'healthBar', 1, 1, 'linear')
        doTweenAlpha('scoretxtfade', 'scoreTxt', 1, 1, 'linear')

        setProperty('blackbg.alpha',0)
    end
    if curStep == 1552 then
        doTweenAlpha('blackbgfade','blackbg',1,1,'linear')
        doTweenAlpha('blackbye','gf',0,1,'linear')
    end
    if curStep == 1680 then
        doTweenAlpha('blackbye','gf',1,1,'linear')
    end
    if curStep == 1808 then
        doTweenAlpha('blackbye','gf',0,1,'linear')
        doTweenAlpha('whitebye','dad',0,1,'linear')
    end
    if curStep == 2064 then
        doTweenAlpha('blackbye','gf',1,1,'linear')
        doTweenAlpha('whitebye','dad',1,1,'linear')
        doTweenAlpha('blackbgfade','blackbg',0,1,'linear')

        p2 = true
    end
    if curStep == 2096 then
        for i = 0,3 do
            noteTweenAlpha('AA'..i,i,0,0.5,'linear')
        end

        noteTweenX('A',4,416,0.5,'quadIn')
        noteTweenX('B',5,528,0.5,'quadIn')
        noteTweenX('C',6,640,0.5,'quadIn')
        noteTweenX('D',7,754,0.5,'quadIn')
    end
    if curStep == 2624 then
        for i = 0,3 do
            noteTweenAlpha('AA'..i,i,1,0.5,'linear')
        end

        noteTweenX('A',4,defaultPlayerStrumX0,0.5,'quadIn')
        noteTweenX('B',5,defaultPlayerStrumX1,0.5,'quadIn')
        noteTweenX('C',6,defaultPlayerStrumX2,0.5,'quadIn')
        noteTweenX('D',7,defaultPlayerStrumX3,0.5,'quadIn')
    end
    if curStep == 3120 then
        doTweenAlpha('blackoverlay','blackhudoverlay',1,0.5,'linear')
    end
    if curStep == 3132 then
        setProperty('defeat.alpha',1)
        
        removeLuaSprite('cargo walls',true)
        removeLuaSprite('cargo',true)
        setProperty('dad.alpha',0)

        setProperty('iconP1.alpha',0);
        setProperty('iconP2.alpha',0);
        setProperty('healthBarBG.alpha',0);
        setProperty('healthBar.alpha',0);
        setProperty('scoreTxt.alpha',0);
        setProperty('icon3.visible', false);
    end
    if curStep == 3136 then
        p1 = true
        p2 = false

        setProperty('blackhudoverlay.alpha',0)
    end
    if curStep == 3648 then
        setProperty('blackhudoverlay.alpha',1)
    end
    if curStep == 3680 then
        setProperty('blackhudoverlay.alpha',0)

        setProperty('dad.alpha',1)
        setProperty('gf.alpha',0)

        setProperty('airshiphall.alpha',1)
        setProperty('airshipGradient.alpha',1)
        setProperty('blacklegs.alpha',1)
        setProperty('bflegs.alpha',1)

        removeLuaSprite('overlay',true)
        removeLuaSprite('defeat',true)

        setProperty('gf.x',1000000)

        p1 = true
        p3 = true
        p2 = true

        setProperty('iconP1.alpha',1);
        setProperty('iconP2.alpha',1);
        setProperty('healthBarBG.alpha',1);
        setProperty('healthBar.alpha',1);
        setProperty('scoreTxt.alpha',1);

        runHaxeCode([[
            game.dad.healthColorArray = [58, 27, 79];
            game.reloadHealthBarColors();
        ]]);

        setTextColor('scoreTxt',rgbToHex("[58,27,79]"))
        setTextColor('botplayTxt',rgbToHex("[58,27,79]"))

        shake = true
    end
    if curStep == 4192 then
        setProperty('end1.alpha',1)

        setProperty('iconP1.alpha',0);
        setProperty('iconP2.alpha',0);
        setProperty('healthBarBG.alpha',0);
        setProperty('healthBar.alpha',0);
        setProperty('scoreTxt.alpha',0);
    end
    if curStep == 4199 then
        cameraFlash('other','FFFFFF',0.5,true)
        removeLuaSprite('end1',true)
        setProperty('end2.alpha',1)
    end
    if curStep == 4204 then
        cameraFlash('other','FFFFFF',0.5,true)
        removeLuaSprite('end2',true)
        setProperty('end3.alpha',1)
    end
    if curStep == 4224 then
        cameraFlash('other','FFFFFF',0.5,true)
        setProperty('end4.alpha',1)
        removeLuaSprite('end3',true)
    end
    if curStep == 4231 then
        cameraFlash('other','FFFFFF',0.5,true)
        setProperty('end5.alpha',1)
        removeLuaSprite('end4',true)
    end
    if curStep == 4236 then
        cameraFlash('other','FFFFFF',0.5,true)
        setProperty('end6.alpha',1)
        removeLuaSprite('end5',true)
    end
    if curStep == 4248 then
        cameraFlash('other','FFFFFF',0.5,true)
        callScript('scripts/video sprite', 'makeVideoSprite', {'wtf', 'poop', 0, 0, 'other'})
    end
end

function opponentNoteHit(id,dir,noteType,sus)
    if getProperty('health') > 0.5 then
        setProperty('health',getProperty('health')-drainValue)
    end
    if shake then
        cameraShake("camHUD", 0.004, 0.1)
        cameraShake("camGame", 0.002, 0.1)
    end
end

function rgbToHex(array)
    return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onTimerCompleted(t)
    if t == 'byeOpt' then
        doTweenX('blackopthi','blackbghud',-520,2,'expoInOut')
        doTweenX('opttexthi','opttext',-520,2,'expoInOut')
    end
end