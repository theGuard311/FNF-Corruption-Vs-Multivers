-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'God Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setPropertyLuaSprite(name_of_character, 'alpha', targetAlpha);
		else
			doTweenAlpha('FadeEventTween', 'name_of_character', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end