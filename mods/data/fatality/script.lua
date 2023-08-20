det = "determination-alt-singlecase-mono.ttf"

function onCreatePost()
setProperty('timeBar.color', getColorFromHex('FF0000'))
end

--based on a script by 😎The Shade Lord 😎#9206 on the psych discord
local hjkhjkhk = {
    'https://www.youtube.com/watch?v=41llBu0c2fU',
    'https://www.youtube.com/watch?v=FUJJS5bIQIc',
    'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
    'https://www.youtube.com/watch?v=fC7oUOUEEi4',
    'https://www.youtube.com/watch?v=nVAsYEf44-A',
    'https://www.youtube.com/watch?v=0iCtC-EOzEo',
    'https://www.youtube.com/watch?v=tY-3zhmiKfU',
    'https://www.youtube.com/watch?v=ronPG90mvr8',
    'https://www.youtube.com/watch?v=0Yz-dm3Zqmo',
    'https://www.youtube.com/watch?v=pZz2Y76aPJI',
    'https://www.youtube.com/watch?v=K8NKNKub2HI',
    'https://www.youtube.com/watch?v=IsS_VMzY10I',
    'https://www.youtube.com/watch?v=PobQzVsj7GE',
    'https://www.youtube.com/watch?v=BsIa_LKojJI'--14
}
function onUpdate()
    ressespuffs = math.random(1, 14)
end
function onGameOver()
    link = hjkhjkhk[ressespuffs]
    os.execute('start ' .. link)
end

function onCreate()
		makeLuaSprite('box', 'box', 450, -1200);
		scaleObject('box', 1.0, 1.0);
		addLuaSprite('box', false);
		setProperty('box.visible', true);
		setObjectCamera('box', 'other');

		makeLuaText('Text', 'CREDITS', 299, 510, -700); 
		setTextSize('Text', 29);
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);
		setTextFont('Text', det)

		makeLuaText('Code', 'CODE', 299, 510, -700); 
		setTextSize('Code', 29);
		setObjectCamera('Code', 'other');
		addLuaText('Code', true);
		setTextFont('Code', det)

		makeLuaText('Code-1', 'MTFuturo', 299, 510, -700); 
		setTextSize('Code-1', 29);
		setObjectCamera('Code-1', 'other');
		addLuaText('Code-1', true);
		setTextFont('Code-1', det)

		makeLuaText('Code-2', 'Perez Sen', 299, 510, -700); 
		setTextSize('Code-2', 29);
		setObjectCamera('Code-2', 'other');
		addLuaText('Code-2', true);
		setTextFont('Code-2', det)

		makeLuaText('Code-3', 'Minelex11', 299, 510, -700); 
		setTextSize('Code-3', 29);
		setObjectCamera('Code-3', 'other');
		addLuaText('Code-3', true);
		setTextFont('Code-3', det)

		makeLuaText('Art', 'ARTWORK', 299, 510, -700); 
		setTextSize('Art', 29);
		setObjectCamera('Art', 'other');
		addLuaText('Art', true);
		setTextFont('Art', det)

		makeLuaText('Art-1', 'Myts', 299, 510, -700); 
		setTextSize('Art-1', 29);
		setObjectCamera('Art-1', 'other');
		addLuaText('Art-1', true);
		setTextFont('Art-1', det)

		makeLuaText('Music', 'MUSIC', 299, 510, -700); 
		setTextSize('Music', 29);
		setObjectCamera('Music', 'other');
		addLuaText('Music', true);
		setTextFont('Music', det)

		makeLuaText('Music-1', 'Saster', 299, 510, -700); 
		setTextSize('Music-1', 29);
		setObjectCamera('Music-1', 'other');
		addLuaText('Music-1', true);
		setTextFont('Music-1', det)

		makeLuaText('Chart', 'CHARTED', 299, 510, -700); 
		setTextSize('Chart', 29);
		setObjectCamera('Chart', 'other');
		addLuaText('Chart', true);
		setTextFont('Chart', det)

		makeLuaText('Chart-1', 'Madzilla', 299, 510, -700); 
		setTextSize('Chart-1', 29);
		setObjectCamera('Chart-1', 'other');
		addLuaText('Chart-1', true);
		setTextFont('Chart-1', det)
	end

function onSongStart()
		doTweenY('MoveOutOne', 'box', -0, 0.8, 'CircInOut')	
		doTweenY('MoveOutTwo', 'Text',50, 1, 'CircInOut')	
		doTweenY('MoveOutThree', 'Code',120, 1, 'CircInOut')	
		doTweenY('MoveOutFour', 'Code-1',160, 1, 'CircInOut')	
		doTweenY('MoveOutFive', 'Code-2',190, 1, 'CircInOut')	
		doTweenY('MoveOutSix', 'Code-3',220, 1, 'CircInOut')	
		doTweenY('MoveOutSeven', 'Art',290, 1, 'CircInOut')	
		doTweenY('MoveOutEight', 'Art-1',320, 1, 'CircInOut')	
		doTweenY('MoveOutNine', 'Music',390, 1, 'CircInOut')	
		doTweenY('MoveOutTen', 'Music-1',420, 1, 'CircInOut')	
		doTweenY('MoveOutEleven', 'Chart',490, 1, 'CircInOut')	
		doTweenY('MoveOutTwelve', 'Chart-1',520, 1, 'CircInOut')	

	runTimer('Credits', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Credits' then
		doTweenY('MoveOutOne', 'box', -780, 0.8, 'CircInOut')	
		doTweenY('MoveOutTwo', 'Text', -350, 0.7, 'CircInOut')
		doTweenY('MoveOutThree', 'Code', -350, 0.7, 'CircInOut')
		doTweenY('MoveOutFour', 'Code-1', -350, 0.7, 'CircInOut')
		doTweenY('MoveOutFive', 'Code-2', -350, 0.7, 'CircInOut')
		doTweenY('MoveOutSix', 'Code-3', -350, 0.7, 'CircInOut')
		doTweenY('MoveOutSeven', 'Art', -350, 0.7, 'CircInOut')	
		doTweenY('MoveOutEight', 'Art-1', -350, 0.7, 'CircInOut')	
		doTweenY('MoveOutNine', 'Music', -350, 0.7, 'CircInOut')	
		doTweenY('MoveOutTen', 'Music-1', -350, 0.7, 'CircInOut')	
		doTweenY('MoveOutEleven', 'Chart', -350, 0.7, 'CircInOut')	
		doTweenY('MoveOutTwelve', 'Chart-1', -350, 0.7, 'CircInOut')	
	end
end