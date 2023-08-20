function onEvent(n,v1,v2)


	if n == 'Flash Camera Red' then

	   makeLuaSprite('flashR', '', 0, 0);
        makeGraphic('flashR',1280,720,'ff0000')
	      addLuaSprite('flashR', true);
	      setLuaSpriteScrollFactor('flashR',0,0)
	      setProperty('flashR.scale.x',2)
	      setProperty('flashR.scale.y',2)
	      setProperty('flashR.alpha',0)
		setProperty('flashR.alpha',1)
		doTweenAlpha('flRTw','flashR',0,v1,'linear')
	end



end