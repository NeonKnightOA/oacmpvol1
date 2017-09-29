

textures/q3j/brightred_glowing_500
{
	qer_editorimage textures/q3j/white.tga
	q3map_backsplash 0 0
	q3map_surfacelight 500
	q3map_lightsubdivide 32
	q3map_lightRGB 1.0 0.0 0.0
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}
textures/q3j/brightblue_glowing_500
{
	qer_editorimage textures/q3j/white.tga
	q3map_backsplash 0 0
	q3map_surfacelight 500
	q3map_lightsubdivide 32
	q3map_lightRGB 0.0 0.0 1.0
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}


textures/q3j/brightgreen_glowing_500
{
	qer_editorimage textures/q3j/white.tga
	q3map_backsplash 0 0
	q3map_surfacelight 500
	q3map_lightsubdivide 32
	q3map_lightRGB 0.0 1.0 0.0
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}


textures/q3j/brightyellow_glowing_500
{
	qer_editorimage textures/q3j/white.tga
	q3map_backsplash 0 0
	q3map_surfacelight 500
	q3map_lightsubdivide 32
	q3map_lightRGB 1.0 1.0 0.0
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/orange_glowing_500
{
	qer_editorimage textures/q3j/orange.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/orange.tga
		rgbGen identity
	}	
}

textures/stone/marble02b_floor
{
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.10 0.10 0.10 )
	}
	{
		map textures/stone/marble02b_floor.jpg
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen const ( 0.9 0.9 0.9 )
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

textures/q3j/light_green_glowing_500
{
	qer_editorimage textures/q3j/light_green.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/light_green.tga
		rgbGen identity
	}	
}


textures/q3j/telemarble 
{
	surfaceparm nomarks
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.3 0.3 0.3 )
	}
	{
		map textures/oajgdm3/invsquares
		tcMod stretch inversesawtooth 1.0 1.0 0.0 2.5
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3j/lime_green_glowing_500
{
	qer_editorimage textures/q3j/lime_green.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/lime_green.tga
		rgbGen identity
	}	
}

textures/q3j/red_glowing_500
{
	qer_editorimage textures/q3j/red.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/red.tga
		rgbGen identity
	}	
}


textures/q3j/rednoise_glowing_500
{
	qer_editorimage textures/q3j/rednoise.tga
	q3map_backsplash 0 0
	q3map_surfacelight 500
	q3map_lightsubdivide 32
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/blue_glowing_500
{
	qer_editorimage textures/q3j/blue.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/blue.tga
		rgbGen identity
	}	
}

textures/q3j/green_glowing_500
{
	qer_editorimage textures/q3j/green.tga
	q3map_backsplash 0 0
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map textures/q3j/green.tga
		rgbGen identity
	}	
}
textures/q3j/white_glowing_500
{
	qer_editorimage textures/q3j/white.tga
	q3map_surfacelight 1000
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/white_glowing
{
	qer_editorimage textures/q3j/white.tga
	q3map_surfacelight 1000
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/white_glowing_2k
{
	qer_editorimage textures/q3j/white.tga
	q3map_surfacelight 2000
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/white_glowing_5k
{
	qer_editorimage textures/q3j/white.tga
	q3map_surfacelight 5000
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}

textures/q3j/white_glowing_250
{
	qer_editorimage textures/q3j/white.tga
	q3map_surfacelight 250
	{
		map textures/q3j/white.tga
		rgbGen identity
	}	
}
textures/q3j/jumppad_plus_y
{
	qer_editorimage textures/q3j/white.tga
	qer_trans .5	
	surfaceparm noimpact
	surfaceparm nolightmap
	cull none
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nodlight

	deformvertexes move 0 50 50 sawtooth 0 1 1 1.3
	{
		clampmap textures/q3j/white.tga
		rgbGen wave sawtooth 1 -1 1 1.3
		blendfunc add
	}
}

textures/oajg_sky/dm2
{
	qer_editorimage textures/oajg_sky/sky1_bk.tga //path of the image that shows up in Radiant
	skyparms textures/oajg_sky/sky1 1024 - //farbox cloudheight nearbox
	//q3map_sunExt 1 0.7 0.6 80 90 45 2 16 //red green blue intensity degrees elevation deviance samples
	//q3map_lightmapFilterRadius 0 160 //self other
	q3map_skyLight 180 8 //amount iterations
	q3map_lightSubdivide 1024
	q3map_lightRGB 1.0 1.0 0.9
	q3map_forcesunlight
	surfaceparm     sky //tells the game it's a sky
	surfaceparm     noimpact //no projectiles impact here
	surfaceparm     nolightmap //no shadows on this surface
	surfaceparm     nomarks //no burn marks
}
 
