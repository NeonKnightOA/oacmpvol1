
textures/akom_sfx/akom_glass
{
	qer_editorimage textures/akom_sfx/glass_shiny.tga
        surfaceparm trans	
	cull none
	qer_trans 	0.5
     
        {
		map textures/akom_sfx/glass_fx.tga
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

textures/akom_sfx/akom_glass2
{
	qer_editorimage textures/akom_sfx/glass_square.tga
        surfaceparm trans	
	cull none
	qer_trans 	0.5
     
        {
		map textures/akom_sfx/glass_x.tga
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


textures/akom_sfx/akomjump
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 200
		
	{
		map textures/akom_sfx/akomjump.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	
{ 
		animmap 4 textures/akom_sfx/akomjump_x.tga textures/akom_sfx/akomjump_x.tga textures/akom_sfx/akomjump_x.tga textures/akom_sfx/akomjump_x.tga
		blendfunc GL_ONE GL_ONE
		tcmod scroll 0 1
	}
	{
		map textures/akom_sfx/akomlogo_x.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
	
}

textures/akom_sfx/akombump
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 200
	{
		map textures/akom_sfx/akombump.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	{
		map textures/akom_sfx/akombump_x.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
}

textures/akom_sfx/akombumpy
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 200
	{
		map textures/akom_sfx/akombumpy.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	{
		map textures/akom_sfx/akombump_y.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
}

textures/akom_sfx/akom74_glow
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 200

	{
		map textures/akom_sfx/akom74_glow.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
}


textures/akom_sfx/akom_circle_spawn
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
			
	{
		map textures/akom_sfx/akom_circle_spawn.tga
		tcmod rotate 20
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
		
}

textures/akom_sfx/akom_power_spawn
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	
	{
		map textures/akom_sfx/akom_power_spawn.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
}

textures/akom_sfx/akom_weapon_spawn
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	
	{
		map textures/akom_sfx/akom_weapon_spawn.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
}

textures/akom_sfx/arrow_red
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	
	{
		map textures/akom_sfx/arrow_red.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}	
}

textures/akom_sfx/arrow_blue
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	
	{
		map textures/akom_sfx/arrow_blue.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}	
}

textures/akom_sfx/arrow_dir_red
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 100
		
	{
		map textures/akom_sfx/arrow_dir_red.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	
	{
		map textures/akom_sfx/arrow_dir_red_x.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
	
}

textures/akom_sfx/arrow_dir_blue
{
        surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	q3map_surfacelight 100
		
	{
		map textures/akom_sfx/arrow_dir_blue.tga
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	
	{
		map textures/akom_sfx/arrow_dir_blue_x.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 1.5
			
	}
	
}

textures/akom_sfx/yellowbeam
{
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	
	{
		map textures/akom_sfx/yellowbeam.tga
                tcMod Scroll .3 0
                blendFunc GL_ONE GL_ONE
        }
}

