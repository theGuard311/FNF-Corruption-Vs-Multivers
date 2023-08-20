function onEvent(n,v1,v2)


	if n == 'revealAJ' then

		setProperty('AJcover.alpha',1)
		doTweenAlpha('flTw','AJcover',0,v1,'linear')
	end



end