 function onEvent(name, value1, value2)
	if name == "Image Flash-2" then
		makeLuaSprite('image-2', value1, 0, 0);
		addLuaSprite('image-2', true);
		doTweenColor('hello-2', 'image-2', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('image-2', 'other');
		runTimer('wait-2', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait-2' then
		doTweenAlpha('byebye-2', 'image-2', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye-2' then
		removeLuaSprite('image-2', true);
	end
end