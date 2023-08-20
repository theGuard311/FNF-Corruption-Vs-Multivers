function onEvent(n,v1,v2)


	if n == 'black box fade' then

		setProperty('box.alpha',1)
		doTweenAlpha('flTw','box',0,v1,'linear')
	end



end