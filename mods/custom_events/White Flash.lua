function onCreate()
	makeLuaSprite('white', 'white', 0,0)
    setObjectCamera('white', 'hud')
    addLuaSprite('white', false)
    setProperty('white.alpha', 0)
end

function onEvent(n,v1,v2)
	if n == 'White Flash' then
		setProperty('white.alpha',1)
		doTweenAlpha('FlashFade', 'white',0,0.5,'linear')
	end
end