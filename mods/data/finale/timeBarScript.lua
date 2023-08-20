local trailColors = {'FF0000', 'FF6A00', 'FFFF00', '00FF00', '0000FF', 'FF00FF'}
local colorInt = 1

function onCreate()
		doTweenColor('timeColorTween', 'timeBar', trailColors[colorInt], 1, 'linear')
end

function onSongStart()
	    setTimeBarColors('FFFFFF', '000000')
end

function onTweenCompleted(tag)
	if tag == 'timeColorTween' then
		colorInt = colorInt + 1
		doTweenColor('timeColorTween', 'timeBar', trailColors[colorInt], 1, 'linear')
end
end

function onUpdate()
	if colorInt >= 6 then
		colorInt = 1
end
end