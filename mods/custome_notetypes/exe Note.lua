function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'exe Note' and not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets-2'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
	end
end

function goodNoteHit(id,dir,type,sus)
	if type == 'exe Note' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
	end
end

function opponentNoteHit(id,dir,type,sus)
	if type == 'exe Note' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
		end
	end
end