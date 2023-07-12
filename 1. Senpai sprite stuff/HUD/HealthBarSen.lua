-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeLuaSprite('Health', 'healthbar')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBarBG.visible', false)
	
	scaleObject('healthBar', 0.97, 0.33)
	
end

function onUpdatePost(elapsed)
	setProperty('Health.visible', getProperty('scoreTxt.visible'))
	setProperty('Health.alpha', getProperty('scoreTxt.alpha'))
	
	
	setProperty('Health.x', getProperty('healthBar.x') - 13)
	setProperty('Health.y', getProperty('healthBar.y') - 23)
	
	
	
	
end
