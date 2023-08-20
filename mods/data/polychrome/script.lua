function onCreate()
    makeLuaText('healthText', '99/' .. math.floor(getProperty("health") * 49.5), 500, 935, 638)
    setTextFont("healthText", "cunniligus-gameboy.ttf")
    addLuaText('healthText')
    setTextAlignment("healthText", "left")
    setTextSize('healthText', 16);
end

function onUpdate(elapsed)
    setTextString('healthText', '99/' .. math.floor(getProperty("health") * 49.5))
end

function onCreatePost() --script made by impostor, credit me now or i will do an unfunny
    makeLuaText("message", "BETTY LV 19  HP", 500, 115, 50)
    setTextAlignment("message", "left")
    setTextFont("message", "cunniligus-gameboy.ttf")
    addLuaText("message")
    setTextSize('message', 16);

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 638)
    end
end