function onEvent(n,v1,v2)


	if n == 'Black Flash Camera' then

	   makeLuaSprite('b-flash', '', 0, 0);
        makeGraphic('b-flash',1280,720,'000000')
	      addLuaSprite('b-flash', true);
	      setLuaSpriteScrollFactor('b-flash',0,0)
	      setProperty('b-flash.scale.x',2)
	      setProperty('b-flash.scale.y',2)
	      setProperty('b-flash.alpha',0)
		setProperty('b-flash.alpha',1)
		doTweenAlpha('flTw','b-flash',0,v1,'linear')
	end



end