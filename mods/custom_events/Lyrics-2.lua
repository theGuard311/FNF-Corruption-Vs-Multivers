function onCreate()
	makeLuaText('lyric','',screenWidth,0,screenHeight/2);
--	setTextFont('lyric','PUSAB.otf');
--	setTextBorder('lyric',5,'ffffff');
	setTextSize('lyric',40);
	setTextAlignment('lyric','center');
	setObjectCamera('lyric', 'other')
	addLuaText('lyric');
end

function onEvent(name, value1)
	if name == 'lyrics' then
		doTweenY('lyricmovething', 'lyric', 40, 0.001 ,'linear')
		setTextString('lyric', value1)
		if color == '' and size == '' then
		end
	
		
		print('Event triggered: ', name, value1);
	end
end