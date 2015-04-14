-- 
-- Abstract: CustomEffect sample app
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
-- Supports Graphics 2.0
--
-- v1.0		2/4/2015
------------------------------------------------------------

-- Setup
local easing = require "easing"
display.setStatusBar( display.HiddenStatusBar ) 

local image = display.newImage( "Image1.jpg" )
image:scale( 0.5, 0.5 )
image.x = display.contentCenterX
image.y = display.contentCenterY

------------------------------------------------------------

-- Debugging: 
-- Log compiler errors found in shader code to console
display.setDefault( 'isShaderCompilerVerbose', true )

-- Load custom filter
local kernel = require "kernel_filter_custom_example"
graphics.defineEffect( kernel )

-- Apply filter
image.fill.effect = "filter.custom.example"
-- image:setFillColor( 1, 0, 0 )

-- Filter parameter
image.fill.effect.intensity = 1
transition.to(
	image.fill.effect,
	{ intensity = 0, time = 5000, transition = easing.outExpo } )

------------------------------------------------------------
