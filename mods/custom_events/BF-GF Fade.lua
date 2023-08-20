-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'BF-Gf Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('boyfriend.alpha', targetAlpha);
			setProperty('girlfriend.alpha', 1);
			setProperty('iconP1.alpha', targetAlpha);
		else
			doTweenAlpha('boyfriendEventTween', 'boyfriend', targetAlpha, duration, 'linear');
			doTweenAlpha('girlfrindFadeEventTween', 'girlfriend', 1, duration, 'linear');
			doTweenAlpha('iconDadFadeEventTween', 'iconP1', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end