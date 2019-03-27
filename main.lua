-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on: Mar 23, 2019
--
-- This file will calculate the price of a pizza with multiple sizes and topping options.
-----------------------------------------------------------------------------------------

--local background = display.setdefault( "background" )

-- Buttons to click to choose large or extra-large

local largeButton = display.newRect( 100, 60, 60, 50)
largeButton:setFillColor( 5/255, 100/255, 10/255)

local extralargeButton = display.newRect( 230, 60, 60, 50)
extralargeButton:setFillColor( 180/255, 32/255, 188/ 255)

-- Buttons to click to choose the # of toppigns

local toppingOneButton = display.newRect( 100, 200, 30, 30)
toppingOneButton:setFillColor( 0.1, 0.5, 0.8)

local toppingTwoButton = display.newRect( 230, 200, 30, 30)
toppingTwoButton:setFillColor( 210/255, 214/255, 14/255)

local toppingThreeButton = display.newRect( 100, 280, 30, 30)
toppingThreeButton:setFillColor( 0.3, 0.4, 0.3)

local toppingFourButton = display.newRect( 230, 280, 30, 30)
toppingFourButton:setFillColor( 198/255, 46/255, 43 /255)

-- Calculate Button

local calculateButton = display.newRect( 160, 400, 80, 50)

local size = ""
local toppings = 0
--------------------------------------------------------------
-- Will assign values to the variable if button is clicked
--------------------------------------------------------------

-- Large Button 

local largeTouch function Assign1( event )
	
	size = "large"

	return true
end

-- Extra-large Button

local extralargeTouch function Assign2( event )

	size = "extralarge"
	
	return true

end

-- First Topping Button

local toppingOneTouch function Assign3( event )

	toppings = 1 

	return true

end

-- Second Topping Button

local toppingTwoTouch function Assign4( event )

	toppings = 2

	return true

end


-- Third Toppign Button

local toppingThreeTouch function Assign5( event )

	toppings = 3

	return true

end


-- Fourth Topping Button 

local toppingFourTouch function Assign6( event )

	toppings = 4

	return true

end


-- Calculate function for every possible selection

local Calculations function Calculate( event )

	subtotal = 0

	if (size == "large") then
		subtotal = 6
		elseif (size == "extralarge") then
					subtotal = 10


					else
						print ("pick a size!")

	end


	if (toppings == 1) then
		subtotal = subtotal + 1
		elseif (toppings == 1.75) then
			subtotal = subtotal + 1.75
		elseif (toppings == 2.50) then
			subtotal =  subtotal + 2.5
		elseif (toppings == 3.35) then
			subtotal = subtotal + 3.35

			else 
				print ("pick a topping!") 
	end

		print ("Size selected is: ".. size)
		print ("Toppings selected is: ".. toppings)
		print ("The subtotal is: ".. subtotal)

end


largeButton:addEventListener( "touch", Assign1)
extralargeButton:addEventListener( "touch", Assign2)
toppingOneButton:addEventListener( "touch", Assign3)
toppingTwoButton:addEventListener( "touch", Assign4)
toppingThreeButton:addEventListener( "touch", Assign5)
toppingFourButton:addEventListener( "touch", Assign6)
calculateButton:addEventListener( "touch", Calculate)

