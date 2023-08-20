function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'nota de peligro' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Nota de peligro'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'nota de peligro' then
		characterPlayAnim('Dad', 'attack', true);
		characterPlayAnim('BF', 'dodge', true);
			playSound('attack-sound', 1)

	end
end
end

	function noteMiss(id, noteData, noteType, isSustainNote)
		if noteType == 'nota de peligro' then
			setProperty('health', 0.10);
		characterPlayAnim('Dad', 'attack', true);
			playSound('hit_sound', 1)
	end
end