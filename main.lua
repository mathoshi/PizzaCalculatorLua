-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on Feb 21 2019
--
-- This file will calculate price of a pizza
-----------------------------------------------------------------------------------------

-- 


--display.setDefault( "background ")

local Pizza = display.newImageRect( "assets/pizza.jpg", 1500, 1004 )
Pizza.x = 100
Pizza.y = 80

local PizzaCalculator =
{
	text = "Pizza Calculator 9000",
	x = 160,
	y = 50,
	width = 300,
	font = "Times New Roman", 
	fontSize = 40,
	align = "center"
}

local Title = display.newText( PizzaCalculator )
Title:setFillColor( 1, 1, 1 )

local rct = display.newRect( 160, 400, 260, 200)
rct:setFillColor( 32/255, 57/255, 96/255)

local Button = display.newImageRect( "assets/button.png", 200, 64)
Button.x = 160
Button.y = 400
Button.id = "Button"

local Text = display.newText( "Size of Pizza in inches", 160, 230, "Times New Roman", 30 )
Text.id = "Text"
Text:setFillColor( 1, 1, 1 )

local DiameterTextField = native.newTextField( 160, 270, 200, 30 )
DiameterTextField.id = "DiameterTextField"

local PriceText = display.newText( "", 160, 310, "Times New Roman", 30 )
PriceText.id = "PriceText"
PriceText.width = 10
PriceText:setFillColor( 1, 1, 1 )

function round(val, decimal)
	if(decimal) then
		return math.floor((val * 10^decimal) + 0.5) / (10^decimal)
	else
		return math.floor(val + 0.5)
	end
end

local function Calculator ( event )
	-- body
	local Diameter
	local Price

	Diameter = DiameterTextField.text
	
	

		if (Diameter == nil or Diameter == '') then
		PriceText.text = "You haven't inputed anything" 
		
		else
		Price = ((0.50 * Diameter) + 0.75 + 1 ) * 1.13 
		PriceText.text = "The price is $" .. round(Price,2)

	end

	return true
end

Button:addEventListener( "touch", Calculator )


