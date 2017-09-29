
textures/akom74/akom_glass
{
	qer_editorimage textures/akom74/glass_shiny.tga
        surfaceparm trans	
	cull none
	qer_trans 	0.5
     
        {
		map textures/akom74/glass_fx.tga
                tcgen environment
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
        {
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
           
}