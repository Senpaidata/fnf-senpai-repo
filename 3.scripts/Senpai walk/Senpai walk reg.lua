accel_x = 0
accel_x2 = 0
bounce = 0

pos_x = 0

function onCreate()
 --cache shit
 
 
	makeAnimatedLuaSprite('WALK','weeb/senpaiWalk')
	setProperty('WALK.y', 200)
	setProperty('WALK.x', 0)
    scaleObject('WALK', 1.75, 1.75)
    addAnimationByPrefix('WALK','anim','Senpai Walk',12,true)
    addLuaSprite('WALK',true)
    objectPlayAnimation('WALK','anim',true)
	setProperty('WALK.visible', false)
	setProperty('WALK.antialiasing', false);
	end

function onUpdate()
	if keyPressed("j") then
		bounce = (1 - math.abs(accel_x)/5)
		setProperty('WALK.flipX', true);
		setProperty('boyfriend.visible', false);
		setProperty('WALK.visible', true);
	
	
	elseif keyPressed("l") then
		bounce = (1 - math.abs(accel_x)/5)
		setProperty('WALK.flipX', false);
		setProperty('boyfriend.visible', false);
		setProperty('WALK.visible', true);
		
		elseif keyboardPressed('o') then
	setProperty('boyfriend.visible', true);
	setProperty('WALK.visible', false);
		
	else
		accel_x2 = accel_x2 + (1 - bounce)/5
		bounce = (bounce*0 + 0.2) + accel_x2
	
	
	
	
end
	if keyboardPressed("j") then
		accel_x = accel_x*0.50 - 1*0.25
	elseif keyboardPressed("l") then
		accel_x = accel_x*0.50 + 1*0.25
	else
		accel_x = (accel_x)*0.8
	end

	pos_x = pos_x + accel_x*6
	setProperty('WALK.x', pos_x - 1/bounce * 150)
	setProperty('boyfriend.x', pos_x - 0/bounce * 150)
        
	scaleObject('WALK', bf_flip/bounce, bounce)
	
	
	
	
end
