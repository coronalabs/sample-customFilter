# Custom Filter

This sample demonstrates how to create [custom shader effects](http://docs.coronalabs.com/daily/guide/graphics/customEffects.html). 

In this sample, we demonstrate a custom _filter_ effect (as opposed to _generator_ or _composite_ effects). Filter effects allow you to do image processing effects on a single texture. 


## Code Overview

The key files are:

* `kernel_filter_custom_example.lua` 
	+ The effect is packaged as a Lua module so that you can easily use it in other projects.
	+ This creates a Lua table that defines the custom shader effect called `"filter_custom_example"`. 
	+ The stub shader code (GLSL ES) contains a fragment kernel. You could alternatively provide a vertex kernel, or define an effect that uses both vertex and fragment kernels.
* `main.lua` 
	+ This sets up the scene, requires the custom effect module, calls `graphics.defineEffect()` to define the effect, and applies it to an image.
	+ There's also a tween applied to one of the effect parameters.


## Requirements

This sample requires daily build 2015.2560 or later.


## Reference

For more information, please check out the following docs:

* [Corona Shader Playground](https://shader.coronalabs.com)
* [Custom Shader Effect Guide](http://docs.coronalabs.com/daily/guide/graphics/customEffects.html) The programming guide for creating custom shader effects.
* [graphics.defineEffect()](http://docs.coronalabs.com/daily/api/library/graphics/defineEffect.html) The API reference for defining custom effects.
* [Forums](http://forums.coronalabs.com/forum/647-custom-shader-effects/)