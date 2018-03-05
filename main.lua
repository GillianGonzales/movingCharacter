-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On Feb 05 2018
--
-- This program will make a object move 
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Local variables to this entire file
local scrollSpeed = 2

-- Background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/Bg.png", 3048, 2048)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "Summer background"

-- Adding Character
local bush = display.newImageRect("./assets/sprites/Bush.png", 600, 400)
bush.x = 0
bush.y = display.contentHeight - 200 
bush.ID = "Bush"

local function MoveBush( event )
	-- Moving Bush across the screen
	bush.x = bush.x + scrollSpeed
	print (display.fps)
end

-- Adding event listener
Runtime:addEventListener("enterFrame", MoveBush)


