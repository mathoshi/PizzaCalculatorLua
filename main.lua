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
	width = 250,
	font = native.systemFont, 
	fontSize = 30,
	align = "center"
}

local Title = display.newText( PizzaCalculator )
Title:setFillColor( 1, 1, 1 )

local Button = display.newImageRect( "assets/button.png", 200, 64)
Button.x = 160
Button.y = 400
Button.id = "Button"

local Text = display.newText( "Size of Pizza in inches", 160, 230, native.systemFont, 20 )
Text.id = "Text"
Text:setFillColor( 1, 1, 1 )

local DiameterTextField = native.newTextField( 160, 270, 200, 25 )
DiameterTextField.id = "DiameterTextField"

local PriceText = display.newText( "", 160, 300, native.systemFont, 20 )
PriceText.id = "PriceText"
PriceText:setFillColor( 1, 1, 1 )

local function Calculator ( event )
	-- body
	local Diameter
	local Price

	Diameter = DiameterTextField.text
	
	Price = ((0.50 * Diameter) + 0.75 + 1 ) * 1.13 

	PriceText.text = "The price is " .. Price
	
	return true
end

Button:addEventListener( "touch", Calculator )
