function onUpdate(elapsed)

    songPos = getSongPosition()

  if getProperty('dad.curCharacter') == 'god-asriel-2' then
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', 500-100*math.sin((currentBeat*0.45)*math.pi),0.001) 
	end
end
