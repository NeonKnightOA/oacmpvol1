textures/akom_liquids/slime9
{
    qer_editorimage textures/akom_liquids/slime9.tga
		q3map_globaltexture
		surfaceparm trans
		surfaceparm noimpact
		surfaceparm nonsolid
		surfaceparm slimeqer_trans 0.5
		surfaceparm nolightmap

		q3map_surfacelight 200
		tessSize 32
		cull disable

		{
			map textures/akom_liquids/slime9.tga
			blendfunc GL_DST_COLOR GL_SRC_COLOR
			tcMod turb 0 .2 0 .1
		}

}

textures/akom_liquids/slime_fall
{
	// Changed By Akom74 April 4, 2013
	qer_editorimage textures/akom_liquids/slime_fall.tga
	q3map_globaltexture
	q3map_lightsubdivide 32
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm lavaqer_trans 0.5
	surfaceparm nolightmap
	q3map_surfacelight 50
	cull disable
	deformVertexes wave 50 sin 3 2 .1 0.1
	
	{
		map textures/liquids/slime10.tga
		tcMod turb 0 .2 0 .1
		tcmod scroll 0 1
	}
       
}