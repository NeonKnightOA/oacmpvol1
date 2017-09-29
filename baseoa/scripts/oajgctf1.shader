
textures/oajg_sky/ctf1
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

textures/xcsv/metalfloor_wall_14bglow2r
{	
	{
		map $lightmap
		       	tcGen environment	
		rgbGen const ( 0.15 0.15 0.15 )
	}
	{
		map textures/xcsv/metalfloor_wall_14bglow2r.jpg
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen const ( 0.75 0.75 0.75 )
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}
