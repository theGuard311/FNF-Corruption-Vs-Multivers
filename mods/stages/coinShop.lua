--By UpDown LeftRight
--Big thanks to Kriptel Pro

length = 0

--								<-- BACKGROUND SETTINGS -->
bgSong = "offsetSong" -- If you want to add some music to shop, here you can do it
local scrollBg = 0.25 -- Background scroll speed
local bgAlpha = 0.75 -- Background alpha value

--									<-- SHOP SETTINGS -->
-- If that song is already bought
BNameColor = '00e600'
BDescriptionColor = '00e600'
BPriceColor = '00e600'
-- If that song is not bought already
NameColor = 'FF0000'
DescriptionColor = 'FFFFFF'
PriceColor = 'FFFFFF'

local items = {
	--If you will touch this, i will ruin you're entire life
}

colorHex = { --By Kriptel Pro
	'0',
	'1',
	'2',
	'3',
	'4',
	'5',
	'6',
	'7',
	'8',
	'9',
	'A',
	'B',
	'C',
	'D',
	'E',
	'F'
}
function getRandomHex(min,max)
	local newHex = ''
	for i = 0,5 do
		newHex = newHex..colorHex[getRandomInt(min,max)]
	end
	return newHex
end


function onCreate()
	local startBgColor = getRandomHex(0, 15)

	--								<-- LOOK HERE!!! -->
	-- Tutorial
	-- Example:
	-- addSong('Song Name or Stuff Name', 'description', price, 'weekFileName(it should match with storymenu button texture name!!!&!&!&!&!)', [[
	--	copy yourWeek.json data here and delete the original one
	--	]])

	addSong('fatality', 'Gaster Vs EL ODIO...', 600, 'extra-10', [[{
	"storyName": "one left",
	"difficulties": "canon",
	"hideFreeplay": false,
	"weekBackground": "",
	"freeplayColor": [
		146,
		113,
		253
	],
	"weekBefore": "chara",
	"startUnlocked": true,
	"weekCharacters": [
		"gf",
		"dad",
		"bf"
	],
	"songs": [
		[
			"fatality",
			"hate",
			[
				146,
				0,
				0
			]
		]
	],
	"hideStoryMode": true,
	"weekName": "",
	"hiddenUntilUnlocked": false
}]])
	addSong('Overwritten', 'Lost recuopera el control', 300, 'extra8', [[{
	"storyName": "one left",
	"difficulties": "canon",
	"hideFreeplay": false,
	"weekBackground": "",
	"freeplayColor": [
		146,
		113,
		253
	],
	"weekBefore": "soul",
	"startUnlocked": true,
	"weekCharacters": [
		"gf",
		"dad",
		"bf"
	],
	"songs": [
		[
			"Overwritten",
			"Azzy-chara",
			[
				225,
				34,
				35
			]
		]
	],
	"hideStoryMode": true,
	"weekName": "",
	"hiddenUntilUnlocked": false
}]])
	addSong('final', 'Es el final', 900, 'extra-7', [[{
	"storyName": "one left",
	"difficulties": "canon",
	"hideFreeplay": false,
	"weekBackground": "",
	"freeplayColor": [
		146,
		113,
		253
	],
	"weekBefore": "the-end",
	"startUnlocked": true,
	"weekCharacters": [
		"gf",
		"dad",
		"bf"
	],
	"songs": [
		[
			"finale",
			"mystery",
			[
				0,
				0,
				0
			]
		]
	],
	"hideStoryMode": true,
	"weekName": "",
	"hiddenUntilUnlocked": false
}]])
	addSong('familiar-finale', 'el final malo de la historia', 1000, 'extra-4', [[{
	"storyName": "one left",
	"difficulties": "canon",
	"hideFreeplay": false,
	"weekBackground": "",
	"freeplayColor": [
		146,
		113,
		253
	],
	"weekBefore": "the-end",
	"startUnlocked": true,
	"weekCharacters": [
		"gf",
		"dad",
		"bf"
	],
	"songs": [
		[
			"familiar-finale",
			"c-azzy",
			[
				40,
				40,
				40
			]
		]
	],
	"hideStoryMode": true,
	"weekName": "one-left",
	"hiddenUntilUnlocked": false
}]])
	addSong('chaotic-endeavors', 'Pelea por el control', 500, 'extra-3', [[{
	"songs": [
		[
			"chaotic-endeavors",
			"soul-azzy",
			[
				38,
				10,
				10
			]
		]
	],
	"hiddenUntilUnlocked": false,
	"hideFreeplay": false,
	"weekBackground": "stage",
	"difficulties": "canon",
	"weekCharacters": [
		"dad",
		"bf",
		"gf"
	],
	"storyName": "Your New Week",
	"weekName": "Custom Week",
	"freeplayColor": [
		146,
		113,
		253
	],
	"hideStoryMode": true,
	"weekBefore": "tutorial",
	"startUnlocked": true
}]])
	addSong('secreto', '...', 1000000, 'secret-song', [[{
	"songs": [
		[
			"encounter-z",
			"mystery",
			[
				0,
				0,
				0
			]
		]
	],
	"hiddenUntilUnlocked": false,
	"hideFreeplay": false,
	"weekBackground": "stage",
	"difficulties": "canon",
	"weekCharacters": [
		"dad",
		"bf",
		"gf"
	],
	"storyName": "Your New Week",
	"weekName": "Custom Week",
	"freeplayColor": [
		0,
		0,
		0
	],
	"hideStoryMode": true,
	"weekBefore": "tutorial",
	"startUnlocked": true
}]])
	length = length - 1

	--preload stuff
	makeLuaSprite('fon', 'menuDesat', 0, 0)
	makeLuaSprite('fon2', 'menuDesat', 1286, 0)

	doTweenColor('fonColor', 'fon', startBgColor, -1, 'sineOut')
	doTweenColor('fonColor2', 'fon2', startBgColor, -1, 'sineOut')

	precacheSound('scrollMenu')
	precacheSound('cancelMenu')
	precacheSound('ToggleJingle')
	--preload end
	--for i = 0,length do
	--	debugPrint("Item Loaded:"..items[i].name.." | Current Length:"..length)
	--end
end

local id = 0

local IvanOffset = {
		{
			x = 100,
			y = -30
		},
		{
			x = 100,
			y = -52
		}
	}

function addSong(name, description, price, weekName, weekData)
	items[length] = {
		name = name,
		description = description,
		price = price,
		weekName = weekName,
		weekData = weekData
	}
	length = length + 1
end

function onStartCountdown()
	playMusic(bgSong)
	fuckHud()
	setProperty('dad.visible', false)

	addLuaSprite('fon')
	addLuaSprite('fon2')
	setObjectCamera('fon', 'other')
	setObjectCamera('fon2', 'other')


	onChange(0)

	makeAnimatedLuaSprite('Ivan', 'shop/Ivan', IvanOffset[1].x, IvanOffset[1].y)
	addAnimationByPrefix('Ivan', 'i', 'IvanStand', 24, true)
	addAnimationByPrefix('Ivan', 'buy', 'IvanBuy', 24, false)
	setObjectCamera('Ivan', 'other')

	makeLuaSprite('shop', 'shop/shopTable', -100, 355)
	setObjectCamera('shop', 'other')
	addLuaSprite('Ivan')
	addLuaSprite('shop')

	makeLuaSprite('doska', 'shop/doska', 700, -100)
	setObjectCamera('doska', 'other')
	addLuaSprite('doska')

	makeLuaText('NameTxt', items[id].name, 1000, 400, 250)
	makeLuaText('descriptionTxt', items[id].description, 600, 600, 400)
	makeLuaText('priceTxt', items[id].price, 640, -180, 400)
	makeLuaText('CoinsTxt', 'Points:'..getDataFromSave('ivanShop', 'coins'), 640, -180, 590)

	setTextSize('NameTxt', 40)
	setTextSize('descriptionTxt', 30)
	setTextSize('priceTxt', 40)
	setTextSize('CoinsTxt', 30)


	addLuaText('NameTxt')
	addLuaText('descriptionTxt')
	addLuaText('priceTxt')
	addLuaText('CoinsTxt')

	setTextFont('NameTxt', 'determination-alt-singlecase-mono.ttf')
	setTextFont('descriptionTxt', 'determination-alt-singlecase-mono.ttf')
	setTextFont('priceTxt', 'determination-alt-singlecase-mono.ttf')
	setTextFont('CoinsTxt', 'determination-alt-singlecase-mono.ttf')


	setObjectCamera('NameTxt', 'other')
	setObjectCamera('descriptionTxt', 'other')
	setObjectCamera('priceTxt', 'other')
	setObjectCamera('CoinsTxt', 'other')

    return Function_Stop
end


function onUpdate(elapsed)
	initSaveData('ivanShop')
	
	-- if getDataFromSave('ivanShop', 'newStart') == 'newStart' then
	-- 	setDataFromSave('ivanShop', 'coins', 1000000)
	-- 	resetGameplay()
	-- 	for i = 0, length do
	-- setDataFromSave('ivanShop', items[i].name, false)
	-- end
	-- setDataFromSave('ivanShop', 'newStart', true)
	-- end

	if getDataFromSave('ivanShop','created') == false then 
	--если нет сейва магазина, то игра создаст его
	initSaveData('ivanShop')
	setDataFromSave('ivanShop','created', true)
	setDataFromSave('ivanShop', 'coins', 1000000)
	for i = 0, length do
	setDataFromSave('ivanShop', items[i].name, false)
	end
	flushSaveData('ivanShop')
	end

	if getDataFromSave('ivanShop', items[id].name) == items[id].name then
		setDataFromSave('ivanShop', items[id].name, false)
	end
	if getDataFromSave('ivanShop', 'coins') == 'coins' then
		setDataFromSave('ivanShop', 'coins', 1000000)
	end


	--debugPrint(getDataFromSave('ivanShop', items[id].name))
	setTextString('CoinsTxt', 'Points:'..getDataFromSave('ivanShop', 'coins'))
	if keyJustPressed('right') then
		playSound('scrollMenu')
		onChange(1)
		setTextString('NameTxt', items[id].name)
		setTextString('descriptionTxt', items[id].description)
		setTextString('priceTxt', items[id].price)
	end
	if keyJustPressed('left') then
		playSound('scrollMenu')
		onChange(-1)
		setTextString('NameTxt', items[id].name)
		setTextString('descriptionTxt', items[id].description)
		setTextString('priceTxt', items[id].price)
	end

	if keyJustPressed('accept') then
		if getDataFromSave('ivanShop', items[id].name) == false then
			if getDataFromSave('ivanShop', 'coins') >= items[id].price then
		playSound('confirmMenu')
		setDataFromSave('ivanShop', 'coins', getDataFromSave('ivanShop', 'coins') - items[id].price)
		buyState()
		--Ivan
		objectPlayAnimation('Ivan', 'buy', true)
		runTimer('magaz', 2)
		end
	end

	if getDataFromSave('ivanShop', items[id].name) == true then
		playSound('cancelMenu')
	end
	if getDataFromSave('ivanShop', 'coins') < items[id].price then
		playSound('cancelMenu')
	end
end

	

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DELETE') then
		if getDataFromSave('ivanShop', items[id].name) == true then
		playSound('ToggleJingle')
		setDataFromSave('ivanShop', 'coins', getDataFromSave('ivanShop', 'coins') + items[id].price)
		deleteState()
	end
	end

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.X') then
		playSound('cancelMenu')
		resetGameplay()
	end

	if keyJustPressed('back') then
		endSong()
	end
	--FON START
	setProperty('fon.x', getProperty('fon.x') - scrollBg)
	setProperty('fon2.x', getProperty('fon2.x') - scrollBg)
	if getProperty('fon.x') == -1286 then
		setProperty('fon.x', 0)
		setProperty('fon2.x', 1286)
	end

	setProperty('fon.alpha', bgAlpha)
	setProperty('fon2.alpha', bgAlpha)
	--FON END

	if getDataFromSave('ivanShop', items[id].name) == true then
		setTextColor('NameTxt', BNameColor)
		setTextColor('descriptionTxt', BDescriptionColor)
		setTextColor('priceTxt', BPriceColor)
	else
		setTextColor('NameTxt', NameColor)
		setTextColor('descriptionTxt', DescriptionColor)
		setTextColor('priceTxt', PriceColor)
	end

	--Ivan
	if getProperty('Ivan.animation.curAnim.name') == 'i' then
		setProperty('Ivan.x', IvanOffset[1].x)
		setProperty('Ivan.y', IvanOffset[1].y)
	end
	if getProperty('Ivan.animation.curAnim.name') == 'buy' then
		setProperty('Ivan.x', IvanOffset[2].x)
		setProperty('Ivan.y', IvanOffset[2].y)
	end

	return Function_Continue;
end

function onChange(num)
	id = id + num
	if (id < 0) then
		id = length
	end
	if (id > length) then
	id = 0;
	end
end

function buyState()
	saveFile('weeks/'..items[id].weekName..".json", items[id].weekData, false)
	setDataFromSave('ivanShop', items[id].name, true)
end

function deleteState()
deleteFile('weeks/'..items[id].weekName..".json", false)
setDataFromSave('ivanShop', items[id].name, false)
end

function resetGameplay()
	debugPrint("DELETED SAVE!")
	setDataFromSave('ivanShop', 'created', false)
for i = 0, length do
	deleteFile('weeks/'..items[i].weekName..".json", false)
end

end

function onTimerCompleted(tag)
	if tag == 'magaz' then
		objectPlayAnimation('Ivan', 'i', false)
	end
end

function fuckHud()
		setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
end
