count = 0

function onUpdate()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') and count == 0 then
count = 1
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') and count == 1 then
count = 2
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.S') and count == 2 then
count = 3
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') and count == 3 then
count = 4
end
if count == 4 then
loadSong('game-over')
playSound('attack-sound') -- optional
end
end