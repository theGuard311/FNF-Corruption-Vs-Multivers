local enabled = true

if enabled == true then
function rgbToHex(r,g,b)
    local rgb = (r * 0x10000) + (g * 0x100) + b
    return string.format("%x", rgb)
end

coolIcon = 'face'
meanIcon = 'face'

singTable = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}

function hitNote(isDad, id, dir, noteType, miss)
gfNote = false
if getPropertyFromGroup('notes', id, 'gfNote') == true then
gfNote = true
end

suffix = getPropertyFromGroup('notes', id, 'animSuffix')

shouldMissAnimation = true
shouldAnimation = true

if suffix == 'therenoanimation' then
	shouldAnimation = false
end

if suffix == 'therenomissanimation' then
	shouldMissAnimation = false
end

if suffix == 'therenoanimationormiss' then
	shouldAnimation = false
	shouldMissAnimation = false
end

customAnimation = ''

if noteType == 'GF Sing' then
	gfNote = true
end
if noteType == '' then
	gfNote = false
end
if noteType == 'No Animation' then
	shouldAnimation = false
	shouldMissAnimation = false
end
if noteType == 'Alt Animation' then
	suffix = '-alt'
end
if noteType == 'Hurt Note' then
	shouldMissAnimation = false
	if miss == true then
		customAnimation = 'Hurt'
	end
end
if noteType == 'Hey!' then
	shouldAnimation = false
	shouldMissAnimation = false
	customAnimation = 'Hey'
end

if miss == true then
suffix = 'miss'
end

singer = 'dad'

if isDad == false then
	singer = 'boyfriend'
end

if gfNote == true then
	singer = 'gf'
end

--playAnim(singer, singTable[dir + 1] .. suffix, true, false, 0)

triggerEvent('Play Animation', singTable[dir + 1] .. suffix, singer)

if customAnimation ~= '' then
	--playAnim(singer, customAnimation, true, false, 0)
	triggerEvent('Play Animation', customAnimation, singer)
end

end

function goodNoteHit(id, dir, noteType, isSus)
	hitNote(true, id, dir, noteType, false)
	--callOnLuas('opponentNoteHit', {id, dir, noteType, isSus}, false, true)
end

function opponentNoteHit(id, dir, noteType, isSus)
	hitNote(false, id, dir, noteType, false)
	--callOnLuas('goodNoteHit', {id, dir, noteType, isSus}, false, true)
end

function noteMiss(id, dir, noteType, isSus)
	hitNote(true, id, dir, noteType, true)
end

function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
			setPropertyFromGroup('unspawnNotes', i, 'mustPress', false)
		else
			setPropertyFromGroup('unspawnNotes', i, 'mustPress', true)
		end
		if getPropertyFromGroup('unspawnNotes', i, 'noAnimation') == true and getPropertyFromGroup('unspawnNotes', i, 'noMissAnimation') == false then
setPropertyFromGroup('unspawnNotes', i, 'animSuffix', 'therenoanimation')
		end
		if getPropertyFromGroup('unspawnNotes', i, 'noAnimation') == false and getPropertyFromGroup('unspawnNotes', i, 'noMissAnimation') == true then
setPropertyFromGroup('unspawnNotes', i, 'animSuffix', 'therenomissanimation')
		end
		if getPropertyFromGroup('unspawnNotes', i, 'noAnimation') == true and getPropertyFromGroup('unspawnNotes', i, 'noMissAnimation') == true then
setPropertyFromGroup('unspawnNotes', i, 'animSuffix', 'therenoanimationormiss')
		end
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
			setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true)
	end

	if not middlescroll then

	noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
	 noteTweenX('bfTween2', 5, 205, 0.01, 'linear');
 	noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
	 noteTweenX('bfTween4', 7, 425, 0.01, 'linear');
	 noteTweenX('dadTween1', 0, 730, 0.01, 'linear');
	 noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
	 noteTweenX('dadTween3', 2, 955, 0.01, 'linear');
	 noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');

	end
end

function onUpdate()

	setProperty('healthBar.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
	end
end
