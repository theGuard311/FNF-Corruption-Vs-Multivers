font = "Sankyu.ttf"
color = "B31443"

function onCreate()
	makeLuaText('lyric2','',1250, 0, 300);
	setTextFont('lyric2', font);
	setTextSize('lyric2',80);
	setTextAlignment('lyric2','center');
	setObjectCamera('lyric2', 'other')
	addLuaText('lyric2');
	setTextColor('lyric2', color);
	setTextAlpha('lyric2', 0);
end

function onEvent(name, value1)
	if name == 'lost-lyrics' then
		setTextString('lyric2', value1)
		end
	end