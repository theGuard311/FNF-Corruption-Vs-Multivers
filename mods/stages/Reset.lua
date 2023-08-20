function onStartCountdown()
    return Function_Stop
end

function onCreate()
    bgstufflmao()

    makeLuaSprite('theimage', menubackgrounds/menu_reset, 0, 0)
    screenCenter('theimage', 'XY')
    addLuaSprite('theimage')
    setObjectCamera('theimage', 'hud')
    setProperty('theimage.antialiasing', false)
    
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

function keyboardstuff()
    local accept = keyJustPressed('accept')
    local back = keyJustPressed('back')

    if accept then
        loadSong('final-encounter')
    end

    if back then
        endSong()
    end
end

function bgstufflmao()
end