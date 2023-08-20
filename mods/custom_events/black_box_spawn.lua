function onEvent(name,value1,value2)


	if name == 'black box spawn' then

	   makeLuaSprite('box', '',0, -200);
        makeGraphic('box',1280,720,'000000')
	      addLuaSprite('box', true);
	      setLuaSpriteScrollFactor('box',1,1)
	end



end