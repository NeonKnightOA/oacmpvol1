textures/akom_sky/akomsky
{
	qer_editorimage textures/akom_sky/akomsky1.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_surfacelight 35
	surfaceparm sky
	q3map_sun	1 1 1 32	90 90
	skyparms textures/akom_env/akomsky3 - -
	{
		map textures/akom_sky/anoice1.tga
		blendfunc filter
		tcmod scale 3 2
		tcmod scroll .01 .02
		rgbgen identity
	}
}

textures/akom_sky/akomsky2
{
	qer_editorimage textures/akom_sky/akomsky2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_surfacelight 25
	surfaceparm sky
	q3map_sun .9 .9 1 70 65 78
	skyparms textures/akom_env/akomsky2 - -
	{
		map textures/pulchr/pul1duelsky-a.jpg
		blendfunc filter
		tcmod scale 3 2
		tcmod scroll .01 .02
		rgbgen identity
	}
}

textures/akom_sky/akomsky3
{
	qer_editorimage textures/akom_sky/akomsky3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512
	q3map_surfacelight 50
	surfaceparm sky
	q3map_sun	1 1 1 32	90 90
	skyparms textures/akom_env/akomsky3 - -
	{
		map textures/pulchr/pul1duelsky-a.jpg
		blendfunc filter
		tcmod scale 3 2
		tcmod scroll .01 .02
		rgbgen identity
	}
}

textures/akom_sky/akomblacksky
{
	qer_editorimage textures/akom_sky/akomblacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512
	q3map_surfacelight 50
	surfaceparm sky
	q3map_sun	1 1 1 32	90 90
	skyparms env/earthsky/earthsky - -
}

textures/akom_sky/akomblacksky2
{
	qer_editorimage textures/akom_sky/akomblacksky2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512
	q3map_surfacelight 25
	surfaceparm sky
	q3map_sun .9 .9 1 70 65 78
	skyparms textures/akom_env/akomsky4 - -
	{
		map textures/pulchr/pul1duelsky-a.jpg
		blendfunc filter
		tcmod scale 2 3
		tcmod scroll .01 .02
		rgbgen identity
	}
}

textures/akom_sky/akomblacksky3
{
	qer_editorimage textures/akom_sky/akomblacksky3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512
	q3map_surfacelight 50
	surfaceparm sky
	q3map_sun	1 1 1 32	90 90
	skyparms textures/akom_env/nebulae2 - -
}

textures/akom_sky/akompureblacksky
{
	qer_editorimage textures/akom_sky/akompureblacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_surfacelight 80
	surfaceparm sky
	q3map_sun	1 1 1 32	90 90
	skyparms textures/akom_env/pureblacksky - -
}


textures/akom_sky/akomstars2
{
	qer_editorimage textures/akom_sky/akomstars2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_surfacelight 40
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 32	90 90
	{
		map	textures/akom_sky/akomstars2.tga
		tcmod scroll 2 0
		rgbGen identity
	}
}


textures/akom_sky/akom_stars
{
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
	surfaceparm nolightmap
        cull none
               
	{
		map textures/akom_sky/akom_stars.tga
                tcMod Scroll .5 .6
                blendFunc GL_ONE GL_ONE
        }
            
}
