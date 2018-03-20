-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: knagmin
-- created by: Mar 19
-----------------------------------------------------------------------------------------

local myText = display.newText( "Enter a number:", 500, 200, systemFont, 85)
myText:setFillColor( 1, 0, 0)

local numberTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 550, 400, 150)
numberTextField.id = "number TextField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  400, 157 )
calculateButton.x = ( display.contentCenterX - 0)
calculateButton.y = (display.contentCenterY - 350)
calculateButton.id = "calculate button"

local function calculateButtonFuction( event )
    
    local clear2 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 400, 100 )
    clear2:setFillColor( 0, 0, 0)
    
    local clear1 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 400, 100 )
    clear1:setFillColor( 0, 0, 0)
	
	local answerAsnumber = tonumber(numberTextField.text)
	
	if answerAsnumber > 0 then
	
		local positiveText = display.newText( "positive", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

	elseif answerAsnumber < 0 then

		local nagativeText = display.newText( "nagative", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)
	
	elseif answerAsnumber == 0 then
	
		local neutralText = display.newText( "neutral", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

	end
end

calculateButton:addEventListener( "touch", calculateButtonFuction)