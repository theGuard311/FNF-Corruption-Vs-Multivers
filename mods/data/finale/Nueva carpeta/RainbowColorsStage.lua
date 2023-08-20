Stage = 'asriel'
StageT = 'asrielTween'
Stageval1 = Stage
detime = 0.5
detimeF = 0.5
detimeL = 1.0
detimeD = 2.5


local curLightEvent = 0

function onCreatePost()
	doTweenColor(StageT, Stage, 990000, detime, 'quadInOut')
	doTweenColor(StageLT, StageL, 990000, detimeL, 'quadInOut')
	runTimer('colorTimer1', 0.5)
end

function onTimerCompleted(tag)
	if tag == 'colorTimer1' then
		doTweenColor(StageT, Stage, 995500, detime, 'quadInOut')
		doTweenColor(StageFT, StageF, 9999999, detimeF, 'quadInOut')
		doTweenColor(StageDT, StageD, 995500, detimeD, 'quadInOut')
		doTweenColor(StageL3T, StageL3, 999999, detimeL, 'quadInOut')

		runTimer('colorTimer2', detime)
	end
	if tag == 'colorTimer2' then
		doTweenColor(StageT, Stage, 856500, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 856500, detimeD, 'quadInOut')
		doTweenColor(StageL2T, StageL2, 999999, detimeL, 'quadInOut')
		runTimer('colorTimer3', detime)
	end
	if tag == 'colorTimer3' then
		doTweenColor(StageT, Stage, 259525, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 259525, detimeD, 'quadInOut')
		doTweenColor(StageLT, StageL, 990099, detimeL, 'quadInOut')
		runTimer('colorTimer4', detime)
	end
	if tag == 'colorTimer4' then
		doTweenColor(StageT, Stage, 999050, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 999050, detimeD, 'quadInOut')
		runTimer('colorTimer5', detime)
	end
	if tag == 'colorTimer5' then
		doTweenColor(StageT, Stage, 992590, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 992590, detimeD, 'quadInOut')
		runTimer('colorTimer6', detime)
	end
	if tag == 'colorTimer6' then
		doTweenColor(StageT, Stage, 991599, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 991599, detimeD, 'quadInOut')
		doTweenColor(StageLT, StageL, 999999, detimeL, 'quadInOut')
		doTweenColor(StageL2T, StageL2, 000099, detimeL, 'quadInOut')
		doTweenColor(StageL3T, StageL3, 101010, detimeL, 'quadInOut')
		doTweenColor(StageFT, StageF, 505050, detimeF, 'quadInOut')
		runTimer('colorTimer7', detime)
	end
	if tag == 'colorTimer7' then
		doTweenColor(StageT, Stage, 451580, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 451580, detimeD, 'quadInOut')
		runTimer('colorTimer8', detime)
	end
	if tag == 'colorTimer8' then
		doTweenColor(StageT, Stage, 450080, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 450080, detimeD, 'quadInOut')
		runTimer('colorTimer9', detime)
	end
	if tag == 'colorTimer9' then
		doTweenColor(StageT, Stage, 800080, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 800080, detimeD, 'quadInOut')
		doTweenColor(StageLT, StageL, 999900, detimeL, 'quadInOut')
		runTimer('colorTimerA', detime)
	end
	if tag == 'colorTimerA' then
		doTweenColor(StageT, Stage, 994075, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 994075, detime, 'quadInOut')
		runTimer('colorTimerB', detime)
	end
	if tag == 'colorTimerB' then
		doTweenColor(StageT, Stage, 994045, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 994045, detimeD, 'quadInOut')
		runTimer('colorTimerC', detime)
	end
	if tag == 'colorTimerC' then
		doTweenColor(StageT, Stage, 990505, detime, 'quadInOut')
		doTweenColor(StageDT, StageD, 990505, detime, 'quadInOut')
		doTweenColor(StageLT, StageL, 990000, detimeL, 'quadInOut')
		doTweenColor(StageL2T, StageL2, 999999, detimeL, 'quadInOut')
		runTimer('colorTimer1', detime)
	end
end