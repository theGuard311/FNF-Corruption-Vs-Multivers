function onCreatePost()
setProperty('timeBar.color', getColorFromHex('ff0000'))
end

--configuración fácil de los scripts
IntroTextSize = 25	--Tamaño del texto de la cosa "estas jugando".
IntroSubTextSize = 30 --tamaño del texto para el nombre de la canción.
IntroTagColor = 'ff0000'	--Color de la etiqueta al final de la caja.
IntroTagWidth = 15	--Ancho de la etiqueta de la caja.
--configuración fácil de los scripts

--actual script
function onCreate()
	--la etiqueta al final de la caja
	makeLuaSprite('JukeBoxTag', 'empty', -305-15, 15)
	makeGraphic('JukeBoxTag', 310+15, 100, 'ff0000')
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	--la caja
	makeLuaSprite('JukeBox', 'empty', -305-15, 15)
	makeGraphic('JukeBox', 310, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--el texto para el bit "estas jugando"
	makeLuaText('JukeBoxSubText', 'by The Possessed One', 350, -305-15, 60)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroTextSize)
	addLuaText('JukeBoxSubText')
	
	--texto para el nombre de la canción
	makeLuaText('JukeBoxText', songName, 300, -305-15, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroSubTextSize)
	addLuaText('JukeBoxText')
end

--funciones de movimiento
function onSongStart()
	-- Inst y Vocales comienzan a sonar, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- Un bucle de un temporizador que has llamado se ha completado, el valor "tag" es su etiqueta
	-- loops = cuántos bucles habrá hecho cuando termine por completo
	-- loopsLeft = cuántos quedan
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
	end
end