textures/akom_teleporter/teleporter_1
{
	qer_editorimage textures/akom_teleporter/teleporter_1.tga
	     surfaceparm nomarks
		surfaceparm nolightmap
	cull disable
	
	{
		map textures/akom_teleporter/teleporter_1.tga
		rgbGen identity
	}

{
		map textures/akom_teleporter/slime9_teleporter.tga
		tcmod rotate 10
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
}


textures/akom_teleporter/aw_teleporter
 
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull disable
	{
		map textures/akom_teleporter/aw_teleporter.tga
                tcMod turb 0 .5 0 .25
                tcmod scroll 2 5
		blendfunc GL_ONE GL_ONE
		}
}


textures/akom_teleporter/akom_teleporter

{
        surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull disable
	{
		map textures/akom_teleporter/akom_teleporter.tga
		tcmod turb sin .0 .0 .0 .0
		tcmod rotate 0
		tcmod scroll .1 .1
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
}


textures/akom_teleporter/slime9
 
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull disable
	{
		map textures/liquids/slime9.jpg
		tcGen environment
                tcMod turb 0 0.25 0 0.5
                tcmod scroll 1 1
		blendfunc GL_ONE GL_ONE
	}
}

textures/akom_teleporter/xan_teleporter
 
{
        surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	
	cull disable
	{
		map textures/akom_teleporter/xan_teleporter.tga
		tcmod turb sin 0 0 0 0
		tcmod rotate 0
		tcmod scroll .5 1
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}

{
		map textures/akom_teleporter/xan_teleporter_line.tga
		tcmod turb sin 0 0 0 0
		tcmod rotate 0
		tcmod scroll 1 0
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}

}

