function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'staticNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', ''); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'staticNote' then
	end
end
end
