
function onCreate()
     makeLuaSprite('bg','backgrounds/pcport/assets/bg', 0, -50)
     setScrollFactor('bg', 0, 0)
     setObjectCamera('bg', 'hud')
     setProperty('bg.antialiasing', false)
     addLuaSprite('bg',false)
end

function start(song)
	addTheDamnSprites()
	makeCharacters()
end

function makeCharacters()
	makeLuaCharacter('rodrigwell', 'rodrigwell', false, true)
	setProperty('rodrigwell.x', getProperty('rodrigwell.x') - 1500)
	setProperty('rodrigwell.alpha', 0);

	makeLuaCharacter('miguel', 'miguel', true, false)
	setProperty('miguel.x', getProperty('miguel.x') + 1800)
	setProperty('miguel.y', getProperty('miguel.y') + 50)
	setProperty('miguel.alpha', 0);

	makeLuaCharacter('liquidtransition', 'liquid')
	addEffect('liquidtransition', 'grayscale')
	setProperty('liquidtransition.stopIdle',  true)
	setObjectCamera('liquidtransition', 'hud')
	characterZoom('liquidtransition', 1.1)
	setProperty('liquidtransition.x', -400)
	setProperty('liquidtransition.y', 1000)
	setProperty('liquidtransition.angle', 5)
	
	makeLuaCharacter('ski', 'ski2', false, true)
	setProperty('ski.x', getProperty('ski.x') - 1500)
	setProperty('ski.y', getProperty('ski.y') - 100)
	setProperty('ski.alpha', 0);

	makeLuaCharacter('doll', 'p2doll', false, true)
	setProperty('doll.x', getProperty('doll.x') + 1500)
	setProperty('doll.y', getProperty('doll.y') - 250)
	setProperty('doll.alpha', 0);

	makeLuaCharacter('boyfriend1', 'solid-guitar', true)
	setProperty('boyfriend1.alpha', 0)

	makeLuaCharacter('jimmy', 'jimmy', true)
	setProperty('jimmy.alpha', 0)

	makeLuaCharacter('fakejim', 'jimunwell', true)
	setProperty('fakejim.alpha', 0)

	makeLuaCharacter('fakegf', 'gf-unwellis')
	setProperty('fakegf.alpha', 0)

	makeLuaCharacter('rocco', 'rocco', false, true)
	setProperty('rocco.x', getProperty('rocco.x') - 1500)
	setProperty('rocco.alpha', 0)
end

function addTheDamnSprites()
	local screens = {'blackScreen', 'whiteScreen'}

	for i = 1,#screens do
		makeLuaSprite(screens[i]..'', '', -200, -200);

		local color = '0xFF000000'
		if i == 2 then
			color = '0xFFFFFFFF'
		end

		makeGraphic(screens[i]..'', 2000, 2000, color)
		setObjectCamera(screens[i]..'', 'camHUD')
		addLuaSprite(screens[i]..'', true);
		setProperty(screens[i]..'.alpha', 0)
	end

	makeAnimatedLuaSprite('intro', 'backgrounds/indie/cup/the_thing2.0', 0, 0)
	addAnimationByPrefix('intro', 'enter', 'BOO', 24, false)
	setProperty('intro.scale.x', 1280/1200)
	setProperty('intro.scale.y', 1280/1200)
	setObjectCamera('intro', 'other')
	addLuaSprite('intro', true)
	setProperty('intro.alpha', 0)

    makeAnimatedLuaSprite('P3StaticALT', 'backgrounds/sonic/exe/Phase3Static', 0, 0)
    addAnimationByPrefix('P3StaticALT', 'P3StaticALT', 'Phase3Static instance 1', 24, false)
    setObjectCamera('P3StaticALT', 'camOther')
    scaleObject('P3StaticALT', 4, 4)
    screenCenter('P3StaticALT')
    setProperty('P3StaticALT.alpha', 0)
    addLuaSprite('P3StaticALT', true)

    scaleObject('P3StaticALT', 6, 6)

	makeLuaSprite('poke','backgrounds/voltz/poke1',0, -500)
	setScrollFactor('poke', 0, 0)
	setObjectCamera('poke', 'hud')
	addLuaSprite('poke',false)
     setProperty('poke.alpha', 0)

	makeLuaSprite('poke2','backgrounds/voltz/poke2',0, 950) 
	setScrollFactor('poke2', 0, 0)
	setObjectCamera('poke2', 'hud')
	addLuaSprite('poke2',false)
     setProperty('poke2.alpha', 0)

     setObjectOrder('poke', getObjectOrder('poke2') + 1)

	makeLuaSprite('blue', 'backgrounds/misc/BlueScreen', 0, 0)
	setProperty('blue.alpha', 0)
	addLuaSprite('blue', true)
	screenCenter('blue')
	setObjectCamera('blue', 'hud')

	makeLuaSprite('bobjump', 'backgrounds/bob/bobscreen', 0, 0)
	setProperty('bobjump.alpha', 0)
	addLuaSprite('bobjump', true)
	screenCenter('bobjump')
	setObjectCamera('bobjump', 'hud')

	makeLuaSprite('eggjump', 'backgrounds/sonic/exe/jumpscares/Eggman', 0, 0)
	setProperty('eggjump.alpha', 0)
	addLuaSprite('eggjump', true)
	screenCenter('eggjump')
	setObjectCamera('eggjump', 'hud')

	makeAnimatedLuaSprite('boom', 'backgrounds/nonsense/boom', -100, -80)
	addAnimationByPrefix('boom', 'boom', 'Explosion', 24, false)
	setProperty('boom.scale.x', 2)
	setProperty('boom.scale.y', 2)
	setObjectCamera('boom', 'hud')
	addLuaSprite('boom', true)
	setProperty('boom.alpha', 0)

	makeAnimatedLuaSprite('takijump', 'backgrounds/taki/jumpscare', 0, 0)
	addAnimationByPrefix('takijump', 'jump', 'jumpscare', 24, false)
	setProperty('takijump.alpha', 0)
	addLuaSprite('takijump', true)
	setObjectCamera('takijump', 'hud')

	makeLuaSprite('goldjump', 'backgrounds/hypno/gold/gold', 0, 0)
	setProperty('goldjump.alpha', 0)
	addLuaSprite('goldjump', true)
	screenCenter('goldjump')
	setObjectCamera('goldjump', 'hud')

	makeLuaSprite('platform', 'backgrounds/leghell/legacy_platform', -1500, 600);
	addLuaSprite('platform')
	setProperty('platform.alpha', 0)
     scaleObject('platform', 0.75, 0.75);

	for i = 1, 2 do
		makeAnimatedLuaSprite('curtain'..i, 'backgrounds/misc/animatedcurtain', -475, -260)
		addAnimationByIndices('curtain'..i, 'still', 'AnimatedCurtain', '6', 0)
		addAnimationByIndices('curtain'..i, 'closing', 'AnimatedCurtain', '1', 0)
		addAnimationByIndices('curtain'..i, 'closetostill', 'AnimatedCurtain', '2,3,4,5,6,7', 24)
		scaleObject('curtain'..i, 3.3,3.1)
		setProperty('curtain'..i..'.antialiasing', true)
		setScrollFactor('curtain'..i, 0.1, 0.1)
		addLuaSprite('curtain'..i, true)
		
		if i == 2 then
			setProperty('curtain'..i..'.flipX', true)
			setProperty('curtain'..i..'.x', getProperty('curtain'..i..'.x') + 1020)
		end
		setProperty('curtain'..i..'.alpha', 0)
	end
end

function onTimerCompleted(t, tag, loops, loopsleft)
	if t == 'bluefade' then
		doTweenAlpha('byebye', 'blue', 0, 0.1, 'linear');
	end

	if t == 'bobfade' then
		doTweenAlpha('byebye', 'bobjump', 0, 0.1, 'linear');
	end

	if t == 'eggfade' then
		doTweenAlpha('byebye', 'eggjump', 0, 0.1, 'linear');
	end

	if tag == 'takifade' then
		setProperty('takijump.alpha', 0)
		soundFadeOut('takijump', 1, 0)
	end

	if t == 'goldfade' then
		doTweenAlpha('byebye', 'goldjump', 0, 0.1, 'linear');
	end

	if tag == 'BfTweenX' then
		runTimer('slideBf', 0.2, 1)
	end

	if tag == 'slideBf' then

		if curStep < 1724 then
			doTweenX('BfTweenX', 'boyfriend', 1125, 1, 'cubeIn');
			doTweenY('BfTweenY', 'boyfriend', -360, 1, 'cubeIn');
			entering = false
		end
	end
end


function onTweenCompleted(t)
	if string.match(t, 'curtain') then
		local spr = t:sub(0, #t-4)
		objectPlayAnimation(spr, 'closetostill', true)
		runTimer('fullyclose', 0.1)
	end

	if string.match(t, 'curtan') then
		local spr = t:sub(0, #t-4)
		for i = 1,2 do
			setProperty('curtain'..i..'.alpha', 0)
		end
	end
end

useDoubleDadIcons = false
useDoubleBFIcons = false

function onUpdate()
	local currentBeat = (songPos / 1000)*(bpm/60)

	if (getProperty('dad.animation.name') == 'idle' or getProperty('dad.animation.name') == 'danceRight') and mustHit == false and stopFollow == false and (getProperty('dad1.animation.name') == 'idle' or getProperty('dad1.animation.name') == 'danceRight') then
        setCamFollow(xx, yy)
    end

    if (getProperty('boyfriend.animation.name') == 'idle' or getProperty('boyfriend.animation.name') == 'danceRight') and mustHit == true and stopFollow == false and (getProperty('boyfriend1.animation.name') == 'idle' or getProperty('boyfriend1.animation.name') == 'danceRight') then
        setCamFollow(xx2, yy2)
    end

	if getProperty('timeBar.color') ~= getColorFromHex(getProperty("dad.iconColor"):sub(3)) then
		setProperty('timeBar.color', getColorFromHex(getProperty("dad.iconColor"):sub(3)))
	end

    if getProperty('P3StaticALT.animation.curAnim.finished') == true then
        setProperty('P3StaticALT.alpha', 0) 

		if getProperty('dad.curCharacter') == 'liquid-guitar' and getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' and getProperty('dad.animation.curAnim.finished') then
			setProperty('dad.stopIdle', false)
			characterPlayAnim('dad', 'idle', true)
		end

		if liquidIsMoving == true then
			local clip = {'whiteScreen', 'fakegf', 'fakejim'}

			addClipRect('whiteScreen', 600+getProperty('liquidtransition.x'), 0, 3000, 3000)
			addClipRect('fakegf', 0+getProperty('liquidtransition.x'), 0, 3000, 3000)
			addClipRect('fakejim', -200+getProperty('liquidtransition.x'), 0, 3000, 3000)
	 end

	if useDoubleDadIcons then
        setProperty('dadIcon1.scale.x', getProperty('iconP2.scale.x'))
        setProperty('dadIcon1.scale.y', getProperty('iconP2.scale.y'))
	   setProperty('dadIcon1.animation.curAnim.curFrame', getProperty('iconP2.animation.curAnim.curFrame'))
        setProperty('dadIcon1.x', getProperty('iconP2.x') - 60)
        setProperty('dadIcon1.y', getProperty('iconP2.y') - 50)
        setProperty('dadIcon1.alpha', 1)
    end

    if useDoubleBFIcons then
        setProperty('bfIcon1.scale.x', getProperty('iconP1.scale.x'))
        setProperty('bfIcon1.scale.y', getProperty('iconP1.scale.y'))
        setProperty('bfIcon1.animation.curAnim.curFrame', getProperty('iconP1.animation.curAnim.curFrame'))
        setProperty('bfIcon1.x', getProperty('iconP1.x') + 75)
        setProperty('bfIcon1.y', getProperty('iconP1.y') - 50)
        setProperty('bfIcon1.alpha', 1)
    end
end

daFrame = 0
cameraShake = false
cameraShakeLite = false
cameraShakeDeluxe = false
ogCamY = 0
path = ""
charPaths = {}

function onEvent(n,v1,v2)
	if n == 'Change Stage' then
		  if v1 == 'devilroom' then
                noteTweenX('defaultPlayerStrumY0', 0, ((screenWidth / 3) - 330) - 0, 0.5)
                noteTweenX('defaultPlayerStrumY1', 1, ((screenWidth / 3) - 220) - 0, 0.5)
                noteTweenX('defaultPlayerStrumY2', 2, ((screenWidth / 3) - 110) - 0, 0.5)
                noteTweenX('defaultPlayerStrumY3', 3, ((screenWidth / 3) + 0) - 0, 0.5)
                noteTweenX('defaultFPlayerStrumY0', 4, ((screenWidth / 3 * 2) - 0) - 100, 0.5)
                noteTweenX('defaultFPlayerStrumY1', 5, ((screenWidth / 3 * 2) + 110) - 100, 0.5)
                noteTweenX('defaultFPlayerStrumY2', 6, ((screenWidth / 3 * 2) + 220) - 100, 0.5)
                noteTweenX('defaultFPlayerStrumY3', 7, ((screenWidth / 3 * 2) + 330) - 100, 0.5)

	           setProperty('timeBar.visible', true)
	           setProperty('timeBarBG.visible', true)
	           setProperty('timeTxt.visible', true)
                setProperty('healthBarBG.alpha', tonumber(1))
                setProperty('scoreTxt.alpha', tonumber(1))
                setProperty('healthBar.alpha', tonumber(1))
                setProperty('iconP1.alpha', tonumber(1))
                setProperty('iconP2.alpha', tonumber(1))

	           setProperty('goal.visible', false)
	           setProperty('bg.visible', false)
	           setProperty('border.visible', false)
		end

		  if v1 == 'polus-new' then
                setProperty('healthBarBG.alpha', 1)
                setProperty('healthBar.scale.y', 1.00)
                setProperty('healthBar.scale.x', 1.00)
		end
	end
end

function doP3StaticALT()
    setProperty('P3StaticALT.alpha', 0.85)
    objectPlayAnimation('P3StaticALT', 'P3StaticALT', true)
end

function stepHit (step)
	if curStep == 244 then
		playBGAnimation('intro', 'enter', true, true)
	end

	if curStep == 245 then
		playSound('cupheadenter')
		setProperty('intro.alpha', 1)
	end

    if curStep == 253 then
	   playBGAnimation('intro', 'enter', true, false)
    end

    if curStep == 255 then
	   setProperty('ratingsAlpha', 1)
	   changeNotesAndTextures('CUPNOTE_assets')
    end

    if curStep == 317 then
        fadeCamPsych('hud', '0xff0000', 1, false, false)
    end

    if curStep == 319 then
        fadeCamPsych('hud', '0xff0000', 1, true, true)
        playSound('sabotage')
	   changeNotesAndTextures('normal')
    end

    if curStep == 445 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 447 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 500 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 512 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 626 then
        doP3StaticALT()
    end

    if curStep == 639 then
       cameraFlash('game', '0xFFFFFFFF', 0.7)
        changeBoyfriendCharacter('fleetway-cam', 525, -100)
    end

    if curStep == 758 then
		for i = 1,2 do
			setObjectOrder('curtain'..i, getObjectOrder('boyfriend') + 1)
			setProperty('curtain'..i..'.alpha', 1)
			objectPlayAnimation('curtain'..i, 'closing',  true)

			local moveNo = -800
			if i == 2 then
				moveNo = 800
			end

			setProperty('curtain'..i..'.x', getProperty('curtain'..i..'.x') + moveNo)
			
			doTweenX('curtain'..i..'Twen', 'curtain'..i, getProperty('curtain'..i..'.x') - moveNo, (stepCrochet*6)/1000, 'sinein')
		end
	end

    if curStep == 768 then
		for i = 1,2 do
			setObjectOrder('curtain'..i, getObjectOrder('boyfriend') + 1)
			local moveNo = -800
			if i == 2 then
				moveNo = 800
			end
			doTweenX('curtan'..i..'Twen', 'curtain'..i, getProperty('curtain'..i..'.x') + moveNo, (stepCrochet*6)/1000, 'sinein')
		end
	end

	if curStep == 828 then
		setProperty('boyfriend.stopIdle', true)
		setProperty('boyfriend.animation.curAnim.curFrame', 2)
		setProperty('defaultCamZoom', 2)
		doTweenZoom('camGame', 'camGame', 2.3, 0.2, 'elasticinout')
		setProperty('cameraSpeed', (0.5/0.04))
	end

	if curStep == 832 then
		if turnOnBotplay == true then
            turnOnBotplay = false
            setPropertyFromClass("flixel.FlxG", 'save.data.botplay', false)
        end

		triggerEvent('Cam Boom Speed', 2, 2);

		setProperty('cameraSpeed', 1)
		doTweenAlpha('camHUD', 'camHUD', 1, 0.1, 'linear')
		setPropertyFromClass('flixel.FlxG', 'camera.zoom', 2.3)
	     setProperty('desk2.visible', true)
 
	     changeNotesDad('stamps')
	     changeNotesBF('doki')
    end

    if curStep == 896 then
	   setProperty('blue.alpha', 1)
	   runTimer('bluefade', 0.25)
	   playSound('blue-screen')

        setProperty('boyfriend.doMissThing', false)
        setProperty('boyfriend.stopIdle', false)
        setProperty('boyfriend.color', RGBColor(80,95,164,164))

	   changeNotesAndTextures('normal')
    end

    if curStep == 958 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 960 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 1024 then
        cameraFlash('game', '0xFFFFFFFF', 0.7)
	   changeNotesDad('normal')
	   changeNotesBF('normal')
    end

    if curStep == 1086 then
	   setObjectOrder('rodrigwell', getObjectOrder('dad') + 1)
        setProperty('rodrigwell.alpha', 1);
        doTweenX('rodrigwellX', 'rodrigwell', getProperty('dad.x') - 175, 0.5)

	   setObjectOrder('miguel', getObjectOrder('boyfriend') + 1)
        setProperty('miguel.alpha', 1);
        doTweenX('miguelX', 'miguel', getProperty('boyfriend.x') + 475, 0.5)

	   changeDadIcon('rodrigwell')
	   changeBFIcon('miguel')
	   updateHealthbar(getProperty('rodrigwell.iconColor'), getProperty('miguel.iconColor'))
	   
        setProperty('defaultCamZoom', 0.75)
    end

    if curStep == 1141 then
	   doTweenY('pokeY', 'poke', getProperty('poke.y') + 500, (stepCrochet*5)/850, 'InOut')
	   doTweenY('poke2Y', 'poke2', getProperty('poke2.y') - 600, (stepCrochet*5)/850, 'InOut')

        setProperty('poke.alpha', 1)
        setProperty('poke2.alpha', 1)
    end

    if curStep == 1152 then
	   doTweenY('pokeY', 'poke', getProperty('poke.y') - 500, (stepCrochet*5)/850, 'InOut')
	   doTweenY('poke2Y', 'poke2', getProperty('poke2.y') + 600, (stepCrochet*5)/850, 'InOut')

        setProperty('rodrigwell.alpha', 0);
        setProperty('miguel.alpha', 0);
    end

    if curStep == 1262 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)

        setProperty('poke.alpha', 0)
        setProperty('poke2.alpha', 0)
    end

    if curStep == 1265 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 1309 then
	   setProperty('eggjump.alpha', 1)
	   runTimer('eggfade', 0.20)
    end

    if curStep == 1341 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 1343 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 1368 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 1369 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
    end

    if curStep == 1407 then
	   playSound('nonsenseboom')
	   setProperty('boom.alpha', 1)
	   playBGAnimation('boom', 'boom', true, false)

	   changeNotesBF('taeyai')
    end

    if curStep == 1470 then
		playSound('takijump', 0.8, 'takijump')
		setProperty('takijump.alpha', 1)
		runTimer('takifade', 0.2)

          changeNotesAndTextures('normal')
    end

    if curStep == 1472 then
		setProperty('takijump.alpha', 0)
    end

    if curStep == 1536 then
        cameraFlash('game', '0xFFFFFFFF', 0.7)
        setActorAlpha(0, 'boyfriend')
    end

    if curStep == 1592 then
        setActorAlpha(0, 'boyfriend')
    end

    if curStep == 1661 then
        fadeCamPsych('hud', '0xff000000', 1, false, false)
    end

    if curStep == 1663 then
        fadeCamPsych('hud', '0xff000000', 1, true, true)
          changeStage('eddhouse-c')
          changeGFAuto('nogf')
          changeBFAuto('slide-edd')
		setProperty('boyfriend.x', 1125);
		setProperty('boyfriend.y', -360);

		doTweenZoom('FunnyZoomin', 'camGame', 3, 0.7, 'cubeinout');
		setProperty('defaultCamZoom', 3);

		doTweenAlpha('hudFunne', 'camHUD', 1, 1, 'linear')
		cancelTween('FunnyZoomin')
		setProperty('cock.alpha', 1);
		doTweenAlpha('cockTweenalfa', 'cock', 0, 0.7);
		setProperty('tordBG.alpha', 1);
		setPropertyFromClass('flixel.FlxG', 'camera.zoom', 1.5)
		setProperty('defaultCamZoom', 1.3)
		changeDadAuto('tord-in-bot')
		setProperty('dad.x', 100); -- tord as gf
		setProperty('dad.y', -1000); -- tord as gf
    end

    if curStep == 1725 then
	   setProperty('bobjump.alpha', 1)
	   runTimer('bobfade', 0.25)
        playSound('bobjumpscare')
        changeStage('run-pov')
        changeDadAuto('bob-pov')
        changeBFAuto('littleman')
        setActorAlpha(0, 'boyfriend')
        setActorAlpha(0, 'gf')
    end

    if curStep == 1792 then
	   setProperty('goldjump.alpha', 1)
	   runTimer('goldfade', 0.25)
        playSound('goldjumpscare')

        setActorAlpha(0, 'boyfriend')
    end

    if curStep == 1856 then
	   setProperty('ski.alpha', 1);
        changeBFAuto('sky2')
        setActorAlpha(0, 'boyfriend')
        characterZoom('ski', 0.75)

	   setObjectOrder('platform', getObjectOrder('dad') - 1)
        doTweenX('platformX', 'platform', getProperty('dad.x') - 435, 0.5)
	   setProperty('platform.alpha', 1)
	   setObjectOrder('ski', getObjectOrder('platform') + 1)

	   setObjectOrder('ski', getObjectOrder('dad') - 1)
        doTweenX('skiX', 'ski', getProperty('dad.x') - 425, 0.5)

	   changeDadIcon('ski')
	   updateHealthbar(getProperty('ski.iconColor'), getProperty('boyfriend.iconColor'))
    end

    if curStep == 1920 then
	   setProperty('doll.alpha', 1);
        changeBFAuto('majin-new')
        characterZoom('doll', 0.75)
        setActorAlpha(0, 'boyfriend')

	   setObjectOrder('doll', getObjectOrder('dad') - 1)
        doTweenX('dollX', 'doll', getProperty('dad.x') + 250, 0.5)

	   changeDadIcon('tdoll')
	   updateHealthbar(getProperty('doll.iconColor'), getProperty('boyfriend.iconColor'))
    end

    if curStep == 1984 then
	   cameraFlash('hud', '0xFFFFFF', 1, true)
	   changeStage('mspaintvoid')
	   changeDadAuto('eduardo')
	   changeGFAuto('gf-unwellis')
	   changeBFAuto('jimunwell')

	   addEffect('dad', 'grayscale')
	   addEffect('iconP2', 'grayscale')
	   addEffect('healthBar', 'grayscale')

	   setProperty('ski.alpha', 0);
	   setProperty('doll.alpha', 0);
	   setProperty('platform.alpha', 0)
	end

	if curStep == 2009 then
		doTweenX('liquidX', 'liquidtransition', 50, (stepCrochet*4)/1000, 'backout')
		doTweenY('liquidY', 'liquidtransition', 100, (stepCrochet*4)/1000, 'backout')
		characterPlayAnim('liquidtransition', 'sigh', true)
	end

	if curStep == 2023 then
		characterPlayAnim('liquidtransition', 'hurt', true)
		setProperty('liquidtransition.animation.curAnim.curFrame', 22)
	end

	if curStep == 2024 then
		doTweenX('liquidX', 'liquidtransition', getProperty('liquidtransition.x') + 1500, (stepCrochet*4)/1000)
		setProperty('whiteScreen.alpha', 1)
		setObjectCamera('whiteScreen', 'game')
		changeLuaCharacter('fakejim', 'jimunwell')
		setProperty('fakegf.alpha', 1)
		setProperty('fakegf.x', getProperty('gf.x'))
		setProperty('fakegf.y', getProperty('gf.y'))

		setProperty('fakejim.y', getProperty('fakejim.y') - 255)
		setProperty('fakegf.y', getProperty('fakegf.y') - 255)

		liquidIsMoving = true
	end

	if curStep == 2024 then
		changeStage('stage-singstar')
		changeDadAuto('liquid')
		setProperty('dad.x', getProperty('dad.x') - 1500)
		changeBFAuto('jimmy')
		changeGFAuto('gf-kacey')
		setScrollFactor('gf', 1, 1)
		setProperty('iconP2.shader', nil)
		setProperty('healthBar.shader', nil)

		triggerEvent('Cam Boom Speed', 2, 2);

		setObjectOrder('whiteScreen', getObjectOrder('stageCrowd')+1)
		setObjectOrder('fakegf', getObjectOrder('whiteScreen') + 1)
		setObjectOrder('fakejim', getObjectOrder('fakegf') + 1)
	end

	if curStep == 2028 then
		doTweenX('dadX', 'dad', getProperty('dad.x') + 1500, (stepCrochet*4)/1000, 'backout')
		setProperty('dad.stopIdle', true)
		characterPlayAnim('dad', 'hurt', true)
		setProperty('dad.animation.curAnim.curFrame', 24)
	end

	if curStep == 2032 then
		changeDadAuto('liquid-guitar')
		setProperty('dad.stopIdle', true)
		characterPlayAnim('dad', 'hey', true)
	end

	if curStep == 2036 then
		setProperty('dad.stopIdle', false)
	end

	if curStep == 2036 then
		changeLuaCharacter('boyfriend1', 'solid-guitar')
		setProperty('boyfriend1.stopIdle', true)
		setObjectOrder('boyfriend1', getObjectOrder('boyfriend') + 1)
		characterPlayAnim('boyfriend1', 'transition', true)
		setProperty('boyfriend1.animation.curAnim.curFrame', 4)
		setProperty('boyfriend1.x', getProperty('boyfriend1.x') + 1500)
		doTweenX('bf1X', 'boyfriend1', getProperty('boyfriend1.x') - 1500, (stepCrochet*4)/1000, 'backout')

		doTweenX('bfX', 'boyfriend', getProperty('boyfriend.x') - 250, (stepCrochet*4)/1000, 'quadout')
	end

	if curStep == 2044 then
		setProperty('boyfriend1.animation.curAnim.curFrame', 17)
	end

     if curStep == 2048 then
	    setProperty('boyfriend1.stopIdle', false)
	    liquidIsMoving = false

	    setProperty('whiteScreen.clipRect', nil)
	    setObjectCamera('whiteScreen', 'hud')
	    setProperty('whiteScreen.alpha', 0)
     end

    if curStep == 2096 then
        changeBFIcon('solid') 
        updateHealthbar(getProperty('dad.iconColor', 'boyfriend1.iconColor'))
    end

    if curStep == 2224 then
	   doTweenX('roccoX', 'rocco', getProperty('dad.x') + 100, (stepCrochet*4)/1000, 'backout')
	   setProperty('rocco.alpha', 1)
	   setProperty('rocco.y', getProperty('dad.y'))
	   setObjectOrder('rocco', getObjectOrder('dad') - 1)

        useDoubleDadIcons = true
        makeHealthIcon('dadIcon1', 'Rocco1', true)
        setObjectOrder('dadIcon1', getObjectOrder('iconP2') + 1)
        setProperty('dadIcon1.flipX', true)

        changeBFAuto('elg-no-lua')
	   setProperty('boyfriend.x', getProperty('boyfriend.x') - 250)

        useDoubleBFIcons = true
        makeHealthIcon('bfIcon1', 'solid', true)
        setObjectOrder('bfIcon1', getObjectOrder('iconP1') + 1)
        setObjectOrder('boyfriend1', getObjectOrder('boyfriend') + 1)
    end
end


function changeNotesAndTextures(skin)
	for i = 0,7 do
		setPropertyFromGroup('strumLineNotes', i, 'texture', skin)
	end

	local daSection = curSection

	if daSection % 2 == 1 then -- in case the event moves back 1
		daSection = curSection + 1
	end

	for i = 0,70 do
		if getPropertyFromGroup('notes', i, 'noteSection') == daSection then
			setPropertyFromGroup('notes', i, 'texture', skin)
		end
	end
end

function changeNotesDad(skin)
	for i = 0,3 do
		setPropertyFromGroup('strumLineNotes', i, 'texture', skin)
	end

	local daSection = curSection

	if daSection % 2 == 1 then -- in case the event moves back 1
		daSection = curSection + 1
	end

	for i = 0,70 do
		if getPropertyFromGroup('notes', i, 'noteSection') == daSection then
			setPropertyFromGroup('notes', i, 'texture', skin)
		end
	end
end

function changeNotesBF(skin)
	for i = 4,7 do
		setPropertyFromGroup('strumLineNotes', i, 'texture', skin)
	end

	local daSection = curSection

	if daSection % 2 == 1 then -- in case the event moves back 1
		daSection = curSection + 1
	end

	for i = 0,70 do
		if getPropertyFromGroup('notes', i, 'noteSection') == daSection then
			setPropertyFromGroup('notes', i, 'texture', skin)
		end
	end
end

sDir = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
dadAlt = ""

function dadNoteHit(note, isSustain, noteType, dType)
	if getProperty('health') > 0.1 and getProperty('boyfriend.curCharacter') == 'fleet-sonic' then    
        setProperty('health',  getProperty('health') - 0.03);
    end

	if dType == 0 then
		playDadSing = true
		if getProperty('dad.curCharacter') == 'bendy-da' then

			if isSustain == false then
				playActorAnimation('dad', sDir[note + 1].. dadAlt, true, false)
			end
		else
			playActorAnimation('dad', sDir[note + 1], true, false)
		end
	
		setProperty('dad.holdTimer', 0)

	elseif dType == 1 then
		playDadSing = false
		playActorAnimation('rodrigwell', sDir[note + 1], true, false)
		setProperty('rodrigwell.holdTimer', 0)

		playActorAnimation('ski', sDir[note + 1], true, false)
		setProperty('ski.holdTimer', 0)

	elseif dType == 2 then
		playDadSing = false
		playActorAnimation('doll', sDir[note + 1], true, false)
		setProperty('doll.holdTimer', 0)

	elseif dType == 3 then
		playDadSing = true

		playActorAnimation('rocco', sDir[note + 1], true, false)
		setProperty('rocco.holdTimer', 0)
	end
end

function bfNoteHit(note, isSustain, noteType, dType)
	if dType == 0 then
		playBFSing = true
		if getProperty('boyfriend.curCharacter') == 'bendy-da' then

			if isSustain == false then
				playActorAnimation('boyfriend', sDir[note + 1].. boyfriendAlt, true, false)
			end
		else
			playActorAnimation('boyfriend', sDir[note + 1], true, false)
		end
	
		setProperty('boyfriend.holdTimer', 0)
	elseif dType == 1 then
		playBFSing = false
            playActorAnimation('miguel', sDir[note + 1], true, false)
            setProperty('miguel.holdTimer', 0)

            playActorAnimation('boyfriend1', sDir[note + 1], true, false)
            setProperty('boyfriend1.holdTimer', 0)

	elseif dType == 3 then
		playBFSing = true

            playActorAnimation('boyfriend1', sDir[note + 1], true, false)
            setProperty('boyfriend1.holdTimer', 0)
	end
end

	if getProperty('boyfriend.curCharacter') == 'slide-edd' then

		runTimer('BfTweenX', 0.2)

		if getProperty('boyfriend.x') == 1125 then
			doTweenX('BfTweenX', 'boyfriend', 925, 0.2, 'cubeIn');
			doTweenY('BfTweenY', 'boyfriend', -560, 0.2, 'cubeIn');
			entering = true
		elseif entering == false then
			doTweenX('BfTweenX', 'boyfriend', 925, 0.1, 'cubeIn');
			doTweenY('BfTweenY', 'boyfriend', -560, 0.1, 'cubeIn');
		end

	end
end

entering = false