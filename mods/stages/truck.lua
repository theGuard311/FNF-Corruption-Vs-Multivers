function onCreate()


	makeLuaSprite('stagesky', 'truck/sky', -484, -122);
	setScrollFactor('stagesky', 0.9, 0.9);

	makeLuaSprite('stageblack', 'truck/black', -574, 256);
	setScrollFactor('stageblack', 0.9, 0.9);

	makeAnimatedLuaSprite('stagebuilding','truck/buildings',-1900,22)
	addAnimationByPrefix('stagebuilding','dance','bg1',24,true)
	objectPlayAnimation('stagebuilding','dance',false)
	setScrollFactor('stagebuilding', 0.9, 0.9);

	makeAnimatedLuaSprite('stagetree','truck/trees',-1900,190)
	addAnimationByPrefix('stagetree','dance','bg2',24,true)
	objectPlayAnimation('stagetree','dance',false)
	setScrollFactor('stagetree', 0.9, 0.9);

	makeAnimatedLuaSprite('stagewall','truck/wall',-1900,499)
	addAnimationByPrefix('stagewall','dance','bg3',24,true)
	objectPlayAnimation('stagewall','dance',false)
	setScrollFactor('stagewall', 0.9, 0.9);

	makeAnimatedLuaSprite('truckbg','truck/carBg',21,487)
	addAnimationByPrefix('truckbg','dance','truck3',24,true)
	objectPlayAnimation('truckbg','dance',false)
	setScrollFactor('truckbg', 1, 1);

	makeAnimatedLuaSprite('trucksky','truck/skyblue',901,470)
	addAnimationByPrefix('trucksky','dance','sb idle',24,true)
	scaleObject('trucksky', 1.3, 1.3);
	objectPlayAnimation('trucksky','dance',false)
	setScrollFactor('trucksky', 1, 1);

	makeAnimatedLuaSprite('truckback','truck/carBack',-10,712)
	addAnimationByPrefix('truckback','dance','truck2',24,true)
	objectPlayAnimation('truckback','dance',false)
	setScrollFactor('truckback', 1, 1);

	makeAnimatedLuaSprite('truckfront','truck/carFront',518,453)
	addAnimationByPrefix('truckfront','dance','truck1',24,true)
	objectPlayAnimation('truckfront','dance',false)
	setScrollFactor('truckfront', 1, 1);

	makeAnimatedLuaSprite('truckwheel','truck/carWheel',194,841)
	addAnimationByPrefix('truckwheel','dance','truck4',24,true)
	objectPlayAnimation('truckwheel','dance',false)
	setScrollFactor('truckwheel', 1, 1);


	makeAnimatedLuaSprite('truckwheel2','truck/carWheel',1104,841)
	addAnimationByPrefix('truckwheel2','dance','truck4',24,true)
	objectPlayAnimation('truckwheel2','dance',false)
	setScrollFactor('truckwheel2', 1, 1);

makeLuaSprite('Tunnel','BlackFlash',-100,-100)
setScrollFactor('Tunnel',0,0);
	   setProperty('Tunnel.alpha', 0.0);

makeLuaSprite('Tunnel2','BlackFlash',-100,-100)
setScrollFactor('Tunnel2',0,0);
	   setProperty('Tunnel2.alpha', 0.0);

makeLuaSprite('Tunnel3','WhiteFlash',-100,-100)
setScrollFactor('Tunnel3',0,0);
	   setProperty('Tunnel3.alpha', 0.0);

makeLuaSprite('Tunnel4','RedFlash',-100,-100)
setScrollFactor('Tunnel4',0,0);
	   setProperty('Tunnel4.alpha', 0.0);
	addLuaSprite('stagesky', false);
	addLuaSprite('stageblack', false);
	addLuaSprite('stagebuilding', false);
	addLuaSprite('stagetree', false);
	addLuaSprite('stagewall', false);
	addLuaSprite('truckbg', false);
	addLuaSprite('trucksky', false);
	addLuaSprite('truckback', true);
	addLuaSprite('truckfront', false);
	addLuaSprite('truckwheel', true);
	addLuaSprite('truckwheel2', true);
	addLuaSprite('black', true);
        addLuaSprite('Tunnel', false);
        addLuaSprite('Tunnel2',true);
        addLuaSprite('Tunnel3',true);
        addLuaSprite('Tunnel4',true);
end

function onUpdate()
    if curBeat == 452 then
           doTweenAlpha('dothetweenvg', 'Tunnel2', 1, 0.5, 'quadIn');
    end
    if curStep == 1837 then
	   setProperty('Tunnel.alpha', 1.0);
	   setProperty('Tunnel2.alpha', 0.0);
    end
    if curBeat == 524 then
           doTweenAlpha('dothetweenvg', 'Tunnel2', 1, 0.5, 'quadIn');
    end
    if curBeat == 532 then
	   setProperty('Tunnel.alpha', 0.0);
	   setProperty('Tunnel2.alpha', 0.0);
	   setProperty('Tunnel3.alpha', 1.0);
           setProperty('trucksky.alpha', 0.0);
           doTweenAlpha('dothetweenvg', 'Tunnel3', 0, 0.6, 'quadOut');
    end
    if curBeat == 710 then
	   setProperty('Tunnel2.alpha', 1.0);
	   setProperty('Tunnel4.alpha', 1.0);
           doTweenAlpha('dothetweenvg', 'Tunnel4', 0, 0.6, 'quadOut');
    end
end
