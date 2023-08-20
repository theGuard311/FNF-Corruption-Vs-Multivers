function onStartCountdown()
    return Function_Stop
end

function onCreate()
    bgstufflmao()

    makeLuaSprite('theimage', nil, 0, 0)
    screenCenter('theimage', 'XY')
    addLuaSprite('theimage')
    setObjectCamera('theimage', 'hud')
    
    changeimg(0)

    setProperty('scoreTxt.visible', false)
    setProperty('botplayTxt.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
    setProperty('inCutscene', true)
    setProperty('healthBarBG.visible', false)
    setProperty('healthBar.visible', false)

    playMusic('gallery-theme', 1, true)
end

drawings = {
    'https://twitter.com/ImSkiForever/status/1505066310660673538?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/FreeCandyV/status/1504962144093224961?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/GoggledAnimatic/status/1504948885558632449?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Arcadius06/status/1504951419828326415?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Arcadius06/status/1504951419828326415?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Vitorinox_YT/status/1504954010482139143?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Deagon006/status/1507155298452127744?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Deago/status/1507155298452127744?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/gothic/status/1504953104395026432?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Ars06/status/1504951419828326415?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/Arius06/status/1504951419828326415?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/VitorT/status/1504954010482139143?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/gon006/status/1507155298452127744?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/De06/status/1507155298452127744?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA',
    'https://twitter.com/gothawitch/status/1504953104395026432?s=20&t=KwSmj9Zjc4SoPKbQ-fChhA'
}

loadedimgs = 0
thefolder = 'gallery/'
curimg = 1

function onUpdatePost(elapsed)
    if loadedimgs >= 10000 then
        clearUnusedMemory()
    end

    keyboardstuff()
end

function keyboardstuff()
    local accept = keyJustPressed('accept')
    local back = keyJustPressed('back')
    local left = keyJustPressed('left')
    local right = keyJustPressed('right')

    if accept then
        io.popen('start '..drawings[curimg])
    end

    if left then
        changeimg(-1)
    end
    if right then
        changeimg(1)
    end

    if back then
        endSong()
    end
end

function changeimg(number)
    curimg = curimg + number
    if curimg < 1 then 
        curimg = 30
    end
    if curimg > 30 then
        curimg = 1
    end
    loadedimgs = loadedimgs + 1
    loadGraphic('theimage', thefolder..curimg)
    screenCenter('theimage', 'XY')
    while getProperty('theimage.height') < 600 or getProperty('theimage.height') > 620 do
        if getProperty('theimage.height') > 620 then 
            setProperty('theimage.scale.y', getProperty('theimage.scale.y') - 0.0001)
            setProperty('theimage.scale.x', getProperty('theimage.scale.x') - 0.0001)
            updateHitbox('theimage')
            screenCenter('theimage')
        end
        if getProperty('theimage.height') < 600 then 
            setProperty('theimage.scale.y', getProperty('theimage.scale.y') + 0.0001)
            setProperty('theimage.scale.x', getProperty('theimage.scale.x') + 0.0001)
            setProperty('theimage.antialiasing', false)
            updateHitbox('theimage')
            screenCenter('theimage')
        end
    end
end

function bgstufflmao()
end