function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'halfBlammed Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'halfBlammed Note'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'halfBlammed Note' then
			setProperty('health', 5);
		characterPlayAnim('Dad', 'singRIGHT', true);
		characterPlayAnim('GF', 'singDOWN', true);
			playSound('shot', 1)

	end
end
end

	function noteMiss(id, noteData, noteType, isSustainNote)
		if noteType == 'halfBlammed Note' then
			setProperty('health', 0.10);
		characterPlayAnim('Dad', 'singRIGHT', true);
		characterPlayAnim('BF', 'hurt', true);
		characterPlayAnim('GF', 'singDOWN', true);
			playSound('shot', 1)
	end
end