textures/oajg_sky/dm1
{
	qer_editorimage textures/oajg_sky/sky1_bk.tga //path of the image that shows up in Radiant
	skyparms textures/oajg_sky/sky1 1024 - //farbox cloudheight nearbox
	//q3map_sunExt 1 0.7 0.6 80 90 45 2 16 //red green blue intensity degrees elevation deviance samples
	//q3map_lightmapFilterRadius 0 160 //self other
	q3map_lightSubdivide 1024
	q3map_lightRGB 0.6 0.6 0.9
	q3map_forcesunlight
	surfaceparm     sky //tells the game it's a sky
	surfaceparm     noimpact //no projectiles impact here
	surfaceparm     nolightmap //no shadows on this surface
	surfaceparm     nomarks //no burn marks
} 

textures/q3j/grass
{
	
	{
		map textures/q3j/grass
		rgbGen identity
		tcMod turb 1.0 0.003 1.0 0.3
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/xcsv/metalfloor_wall_14bglow2
{	
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.15 0.15 0.15 )
	}
	{
		map textures/xcsv/metalfloor_wall_14bglow2.jpg
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen const ( 0.75 0.75 0.75 )
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

textures/xcsv/metalfloor_wall_14
{
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.02 0.02 0.05 )
	}
	{
		map textures/xcsv/metalfloor_wall_14.jpg
		blendFunc GL_ONE GL_SRC_ALPHA		
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

textures/xcsv/metalfloor_wall_14l
{
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.025 0.025 0.0625 )
	}
	{
		map textures/xcsv/metalfloor_wall_14.jpg
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen const ( 0.7 0.7 0.7 )
	}	
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}
 
textures/q3j/jumppad
{
	qer_editorimage textures/q3j/white.tga
	qer_trans .5	
	surfaceparm noimpact
	surfaceparm nolightmap
	cull none
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nodlight

	deformvertexes move 0 0 40 sawtooth 0 1 1 1.3
	{
		clampmap textures/q3j/white.tga
		rgbGen wave sawtooth 0.8 -1 1 1.3
		blendfunc add
	}
}

textures/q3j/teleport
{
	qer_editorimage textures/q3j/white.tga
	qer_trans .5	
	surfaceparm noimpact
	surfaceparm nolightmap
	cull none
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nodlight

	deformvertexes move 0 0 104 sawtooth 0 1 1 0.75
	{
		clampmap textures/q3j/white.tga
		rgbGen wave sin 0 1 0 0.375
		blendfunc add
	}
}

