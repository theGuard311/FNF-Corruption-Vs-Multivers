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

end

loadedimgs = 0
thefolder = 'reset/'
curimg = 1

function onUpdatePost(elapsed)
    if loadedimgs >= 10000 then
        clearUnusedMemory()
    end

    keyboardstuff()
end

function keyboardstuff()
    local back = keyJustPressed('back')

    if back then
        endSong()
    end
end

function changeimg(number)
    curimg = curimg + number
    if curimg < 1 then 
        curimg = 1
    end
    if curimg > 1 then
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