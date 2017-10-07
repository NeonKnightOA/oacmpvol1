//*******************************************************
//*******************************************************
//******* Stripes/sparks and similar decorative *********
//*************** incorporeal shaders *******************
//*******************************************************
//*******************************************************

textures/gig01/gig_stripes1
//Scrolling colored stripes to be used for colorful (athough unrealistic) sparks-like effect.
//Using "Nodraw" texture on other faces of the brush could be useful.
//This version does NOT use "deformvertexes autosprite2" option.
{
		qer_editorimage textures/gig01/gig_stripes1
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
        cull none
        {
        map textures/gig01/gig_stripes1.tga
                tcMod Scroll .5 .6
                blendFunc GL_ONE GL_ONE
        }
            
}

textures/gig01/gig_stripes1_sprite
//Scrolling colored stripes to be used for colorful (athough unrealistic) sparks-like effect.
//Using "Nodraw" texture on other faces of the brush could be useful.
//This version does use "deformvertexes autosprite2" option, used to make it even more visible.
//
//Note: it looks like the autosprite2 option has got the side effect of having the brush
//project its shadow on walls although you don't want. It seems I fixed this by placing that option before others.
//I also set those brushes as "detail" in map editor.
{
		qer_editorimage textures/gig01/gig_stripes1
		deformvertexes autosprite2 // This makes the brush look the same from any angle (laterally)
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
        cull none
        {
        map textures/gig01/gig_stripes1.tga
                tcMod Scroll .5 .6
                blendFunc GL_ONE GL_ONE
        }
            
}

textures/gig01/gig_stripes1b
//This one has got more stripes
{
		qer_editorimage textures/gig01/gig_stripes1
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
        cull none
        {
        map textures/gig01/gig_stripes1.tga
                tcMod Scroll 0.4 1.6
                blendFunc GL_ONE GL_ONE
        }
		{
        map textures/gig01/gig_stripes1.tga
                tcMod Scroll -0.2 -0.6
                blendFunc GL_ONE GL_ONE
        }
            
}

textures/gig01/gig_stripes1b_offset
//This has also got the "polygonoffset" parameter.
//Thought for using as "decal" (place this surface overlapping with an existing wall, and the image will not be "flickering").
{
		qer_editorimage textures/gig01/gig_stripes1
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
        polygonoffset
//		cull none
        {
			map textures/gig01/gig_stripes1.tga
            tcMod Scroll 0.4 1.6
			blendFunc GL_ONE GL_ONE
        }
		{
			map textures/gig01/gig_stripes1.tga
            tcMod Scroll -0.2 -0.6
			blendFunc GL_ONE GL_ONE
        }
            
}

textures/gig01/dots1
//Some light-grey and black dots floating, non-solid.
{
		qer_editorimage textures/gig01/dots1
//		qer_trans 0.8 // Transparency IN EDITOR
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
		cull none
        {
        map textures/gig01/dots1.tga
				rgbGen wave sin .5 .5 .25 0.25
                tcMod Scroll 1.0 0.2
//				tcMod stretch sin 0.8 0.12 0.7 0.9
				tcMod turb 0 0.1 0.2 0.9
				blendFunc blend
				
        }
		{
        map textures/gig01/dots1.tga
				rgbGen wave sin .5 .5 .25 0.4
                tcMod Scroll -0.7 -0.1
				tcMod turb 0 0.1 0.1 0.6
				blendFunc blend
        }
}

textures/gig01/dots1_offset
//Some light-grey and black dots floating, non-solid.
//This version has got the "polygonoffset" parameter:
//thought for using as "decal" (place this surface overlapping with an existing wall, and the image will not be "flickering").
{
		qer_editorimage textures/gig01/dots1
//		qer_trans 0.8 // Transparency IN EDITOR
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
        surfaceparm nolightmap
        polygonoffset
		cull none
        {
        map textures/gig01/dots1.tga
				rgbGen wave sin .5 .5 .4 0.25
                tcMod Scroll 1.0 0.2
//				tcMod stretch sin 0.8 0.12 0.7 0.9
				tcMod turb 0 0.1 0.2 0.9
				blendFunc blend
				
        }
		{
        map textures/gig01/dots1.tga
				rgbGen wave sin .5 .5 .25 0.4
                tcMod Scroll -0.7 -0.1
				tcMod turb 0 0.1 0.1 0.6
				blendFunc blend
        }
}

//*******************************************************
//*******************************************************
//********* Bounce pads and accelerator pads ************
//*******************************************************
//*******************************************************

textures/gig01/gig_bounce01
//A metal grey circular jump-pad, with lights turning on and off, plus a "pulsing" effect. It emits a grey light.
{
	qer_editorimage textures/gig01/gig_bounce01.tga
	q3map_lightimage textures/gig01/gig_bounce01.tga
	q3map_surfacelight 1030
	surfaceparm nodamage
	{
		clampmap textures/gig01/gig_bounce01fx.tga
		tcMod stretch sin 0.8 0.9 0.0 0.7
	}
	{
		map textures/gig01/gig_bounce01.tga
		blendfunc add
		rgbGen identity
	}
	{
		map textures/gig01/gig_circglow01.tga
		blendFunc add
		rgbGen wave sin 0.2 0.2 0 1.4
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}

textures/gig01/gig_bounce01_simple
//A metal grey circular jump-pad, with lights turning on and off. It emits a grey light.
{
	qer_editorimage textures/gig01/gig_bounce01.tga
//	q3map_lightimage textures/gig01/gig_circglow01.tga //If this were used, the shader would emit green light.
	q3map_lightimage textures/gig01/gig_bounce01.tga //If this is used, the shader emits grey light.
	q3map_surfacelight 1030
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gig01/gig_bounce01.tga
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/gig01/gig_circglow01.tga
		blendFunc add
		rgbGen wave sin 0.2 0.2 0 .9
	}
}

textures/gig01/gig_bounce01_S_T_Blocks9
//A metal grey circular jump-pad, with lights turning on and off. It emits a grey light.
//"S" in the name means "simple" (due to the fact there are just lights turning on and off).
//"T" stands for "transparent" (due to how this shader technically works, although the result is a standard solid brush).
//"Blocks9" stands for the background image being used.
//
//NOTE: Unlike original gig_bounce01_simple, in this shader I used "circles" images with TRANSPARENT BACKGROUND, and
//added an additional stage (at the beginning) where I specified the background "floor" image (in this case, blocks9).
//This allows to quickly apply this bouncepad effect to different background floor: just copy-paste this shader code into a new shader,
//then select another background "floor" image!
//Of course, this requires an additional rendering stage, but does not require you to create many different image files to place
//the jump-pad on different surfaces (just different shaders).
//A side effect with this approach is that in the map editor you don't see the actual background image you chose.
//
{
	qer_editorimage textures/gig01/gig_bounce01_trans.tga
//	qer_trans 0.7 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/gig_bounce01_trans.tga
	q3map_surfacelight 1030
		surfaceparm nodamage
	{
        map textures/gothic_block/blocks9.tga // Background "floor" image: you can apply the jump-pad to various floor textures just changing this
		rgbGen identity
    }
	{
		map textures/gig01/gig_bounce01_trans.tga
		blendFunc blend
		rgbGen identity
	}
	{
		map textures/gig01/gig_circglow01_trans.tga
		blendFunc blend
		rgbGen wave sin 0.2 0.2 0 .9
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}


textures/gig01/gig_accel1
//An accelerator pad
{
	qer_editorimage textures/gig01/gig_accel1.tga
	q3map_lightimage textures/gig01/gig_accel1_b.tga
	q3map_surfacelight 1030
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gig01/gig_accel1.tga
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/gig01/gig_accel1_b.tga
		blendFunc add
		rgbGen wave sin 0.2 0.2 0 2.0
	}
	{
		map textures/gig01/gig_accel1_c.tga
		blendFunc add
		tcmod scroll 0.0 0.8
	}
}


//*******************************************************
//*******************************************************
//*************** Simple SHINY surfaces *****************
//*******************************************************
//*******************************************************

textures/gig01/tile_floor1_shiny
//Tiles with "reflection-like" effects (not actually mirroring).
{
	qer_editorimage textures/gig01/tile_floor1.tga
		
	{
		map textures/gig01/tile_floor1.tga
		rgbGen identity
		
	}
	{
		map textures/base_wall/chrome_env.tga
		tcGen environment 
		rgbGen oneminusvertex
		tcmod scale .5 .5
	}
	{
		map textures/gig01/tile_floor1.tga
		blendFunc add
		rgbGen identity
		
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}

textures/gig01/tile_floor2_shiny
{
	qer_editorimage textures/gig01/tile_floor2.tga
		
	{
		map textures/gig01/tile_floor2.tga
		rgbGen identity
		
	}
	{
		map textures/base_wall/chrome_env.tga
		tcGen environment 
		rgbGen oneminusvertex
		tcmod scale .5 .5
	}
	{
		map textures/gig01/tile_floor2.tga
		blendFunc add
		rgbGen identity
		
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}

textures/gig01/marble_floor1_shiny
{
	qer_editorimage textures/gig01/marble_floor1.tga
		
	{
		map textures/gig01/marble_floor1.tga
		rgbGen identity
		
	}
	{
		map textures/base_wall/chrome_env2.tga
//		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
//		tcmod scale .5 .5 //
	}
	{
		map textures/gig01/marble_floor1.tga
		blendFunc add
//		rgbGen identity //
		
	}
	{
		map $lightmap
//		blendFunc filter //
		blendfunc gl_dst_color gl_one_minus_src_alpha // //
		rgbGen identity
	}
}


textures/gig01/marble_floor2_shiny
{
	qer_editorimage textures/gig01/marble_floor2.tga
		
	{
		map textures/gig01/marble_floor2.tga
		rgbGen identity
		
	}
	{
//		map textures/base_wall/chrome_env2.tga	
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
//		tcmod scale .5 .5 //
	}
	{
		map textures/gig01/marble_floor2.tga
		blendFunc add
//		rgbGen identity //
		
	}
	{
		map $lightmap
//		blendFunc filter //
		blendfunc gl_dst_color gl_one_minus_src_alpha // //
		rgbGen identity
	}
}

textures/gig01/marble_floor2_oa_shiny
//Like marble_floor2, but containing the OA symbol
{
	qer_editorimage textures/gig01/marble_floor2_oa.tga
		
	{
		map textures/gig01/marble_floor2_oa.tga
		rgbGen identity
		
	}
	{
//		map textures/base_wall/chrome_env2.tga	
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
//		tcmod scale .5 .5 //
	}
	{
		map textures/gig01/marble_floor2_oa.tga
		blendFunc add
//		rgbGen identity //
		
	}
	{
		map $lightmap
//		blendFunc filter //
		blendfunc gl_dst_color gl_one_minus_src_alpha // //
		rgbGen identity
	}
}

textures/gig01/marble_floor2_a_shiny
//To indicate "A" point for Double Domination mode
{
	qer_editorimage textures/gig01/marble_floor2_a.tga
	{
		map textures/gig01/marble_floor2_a.tga
		rgbGen identity
		
	}
	{
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
	}
	{
		map textures/gig01/marble_floor2_a.tga
		blendFunc add
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_src_alpha
		rgbGen identity
	}
}

textures/gig01/marble_floor2_b_shiny
//To indicate "B" point for Double Domination mode
{
	qer_editorimage textures/gig01/marble_floor2_b.tga
	{
		map textures/gig01/marble_floor2_b.tga
		rgbGen identity
		
	}
	{
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
	}
	{
		map textures/gig01/marble_floor2_b.tga
		blendFunc add
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_src_alpha
		rgbGen identity
	}
}

textures/gig01/marble_floor2_arrow_shiny
//Arrow to be used to route players to a direction
{
	qer_editorimage textures/gig01/marble_floor2_arrow.tga
	{
		map textures/gig01/marble_floor2_arrow.tga
		rgbGen identity
		
	}
	{
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
	}
	{
		map textures/gig01/marble_floor2_arrow.tga
		blendFunc add
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_src_alpha
		rgbGen identity
	}
}

textures/gig01/marble_floor3_shiny
{
	qer_editorimage textures/gig01/marble_floor3.tga
		
	{
		map textures/gig01/marble_floor3.tga
		rgbGen identity
		
	}
	{
		map textures/base_wall/chrome_env2.tga
		tcGen environment 
		rgbGen oneminusvertex
		tcmod scale .5 .5
	}
	{
		map textures/gig01/marble_floor3.tga
		blendFunc add
		rgbGen identity
		
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}

textures/gig01/tilefloor7_shiny
//"Shiny" version of an existing texture
{
	qer_editorimage textures/base_floor/tilefloor7.tga
		
	{
		map textures/base_floor/tilefloor7.tga
		rgbGen identity
		
	}
	{
		map textures/base_wall/chrome_env2.tga
		tcGen environment 
		rgbGen oneminusvertex
		tcmod scale .5 .5
	}
	{
		map textures/base_floor/tilefloor7.tga
		blendFunc add
		rgbGen identity
		
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}

textures/gig01/marble_column1_shiny
{
	qer_editorimage textures/gig01/marble_column1.tga
		
	{
		map textures/gig01/marble_column1.tga
		rgbGen identity
		
	}
	{
//		map textures/base_wall/chrome_env.tga
		map textures/base_trim/tinfx.tga
		tcGen environment 
		rgbGen oneminusvertex
		tcmod scale .5 .5
	}
	{
		map textures/gig01/marble_column1.tga
		blendFunc add
		rgbGen identity
		
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
}




//*******************************************************
//*******************************************************
//******************** Skies ****************************
//*******************************************************
//*******************************************************

textures/gig01/gigsky1
//Grey/green animated sky with greenish/white illumination
{
   qer_editorimage textures/gig01/dimclouds_gr.tga
   surfaceparm noimpact
   surfaceparm nolightmap
   surfaceparm sky
//   q3map_sun   1 1 0.5 95 217 38
   q3map_sun   0.87 0.87 0.5 85 217 38
   q3map_lightimage textures/gig01/dimclouds_light.tga
   q3map_surfacelight 115
   skyparms - 512 -
// cloudparms 512 full
   {
      map textures/gig01/dimclouds_gr.tga
//	  map textures/skies/dimclouds.tga
      tcMod scroll -0.013 0.04
   }
   {
      map textures/skies/dimclouds.tga
//	  map textures/gig01/dimclouds_gr.tga
      blendfunc add
      tcMod scroll 0.02 0.07
   }
}



//*******************************************************
//*******************************************************
//******************** Water ****************************
//*******************************************************
//*******************************************************

textures/gig01/water1_flow
//Clear, blue-ish water, rapidly flowing in a certain direction. Emits a little light.
{
	qer_editorimage textures/gig01/water1a_blue_arrow.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/water1c_blue.tga
	q3map_surfacelight 35
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	deformVertexes wave 32 sin .25 .5 0 1.9
		
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcmod scroll 1.8 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.015 0.6
		tcmod scroll 1.6 -0.09
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.3
//		tcMod turb 0 0.01 0.01 1
		tcmod scroll 1.4 0.04
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}

textures/gig01/water1bis_flow
//Clear, blue-ish water, rapidly flowing in a certain direction. Emits some light.
//Similar to water1_flow, but: 
//each stage scrolling speeds differ from that other shader, it does emit more light, and it has got a lightmap stage.
{
	qer_editorimage textures/gig01/water1a_blue_arrow.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/water1c_blue.tga
	q3map_surfacelight 145
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	cull disable
	deformVertexes wave 32 sin .25 .5 0 1.9
		
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcmod scroll 1.3 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.015 0.6
		tcmod scroll 2.0 -0.09
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.2
//		tcMod turb 0 0.01 0.01 1
		tcmod scroll 1.1 0.04
	}
	{
		map $lightmap
		blendFunc gl_dst_color gl_zero
		rgbgen identity		
	}
}

textures/gig01/water1bis_flow_nodeform
//Clear, blue-ish water, rapidly flowing in a certain direction. Emits some light.
//Similar to water1bis_flow, but: 
//does not have deformVertexes, and does not use a lightmap stage
{
	qer_editorimage textures/gig01/water1a_blue_arrow.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/water1c_blue.tga
	q3map_surfacelight 145
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcmod scroll 1.3 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.015 0.6
		tcmod scroll 2.0 -0.09
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.2
//		tcMod turb 0 0.01 0.01 1
		tcmod scroll 1.1 0.04
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}


textures/gig01/water1_flow_nolight
//Clear, blue-ish water, rapidly flowing in a certain direction. Does NOT emit light.
{
	qer_editorimage textures/gig01/water1a_blue_arrow.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	deformVertexes wave 32 sin .25 .5 0 1.9
		
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcmod scroll 1.8 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.015 0.6
		tcmod scroll 1.6 -0.09
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.3
//		tcMod turb 0 0.01 0.01 1
		tcmod scroll 1.4 0.04
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}

textures/gig01/water1_calm
//Clear, blue-ish water, quite calm. Emits a little light.
{
	qer_editorimage textures/gig01/water1a_blue.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/water1c_blue.tga
	q3map_surfacelight 35
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	deformVertexes wave 32 sin .1 .13 0 0.3
		
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.01 0.3
		tcmod scroll 0.01 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.008 0.02 0.2
		tcmod scroll -0.006 -0.009
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.1
//		tcMod turb 0 0.01 0.01 0.15
		tcmod scroll -0.004 0.012
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}

textures/gig01/water1_calm_nolight
//Clear, blue-ish water, quite calm. Does NOT emit light.
{
	qer_editorimage textures/gig01/water1a_blue.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	deformVertexes wave 32 sin .1 .13 0 0.3
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.01 0.3
		tcmod scroll 0.01 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.008 0.02 0.2
		tcmod scroll -0.006 -0.009
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.1
//		tcMod turb 0 0.01 0.01 0.15
		tcmod scroll -0.004 0.012
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}

textures/gig01/water1_calm_nodeform
//Clear, blue-ish water, quite calm. Emits a little light. It does not have deformVertexes
{
	qer_editorimage textures/gig01/water1a_blue.tga
	qer_nocarve //It is not affected by CSG subtract
	qer_trans 0.6 //Transparency IN EDITOR
	q3map_lightimage textures/gig01/water1c_blue.tga
	q3map_surfacelight 35
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water	qer_nocarveqer_trans 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	
	{ 
		map textures/gig01/water1c_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.01 0.01 0.3
		tcmod scroll 0.01 0.02
	}

	{ 
		map textures/gig01/water1a_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod turb 0 0.008 0.02 0.2
		tcmod scroll -0.006 -0.009
	}
	{ 
		map textures/gig01/water1b_blue.tga
		blendFunc gl_dst_color gl_one
		rgbgen identity
		tcMod stretch sin 1 0.01 0.7 0.1
//		tcMod turb 0 0.01 0.01 0.15
		tcmod scroll -0.004 0.012
	}
//	{
//		map $lightmap
//		blendFunc gl_dst_color gl_zero
//		rgbgen identity		
//	}
}



//*******************************************************
//*******************************************************
//************* Other shaders for walls *****************
//*******************************************************
//*******************************************************

textures/gig01/blocks18c_drops
//This shader makes the wall seem wet by applying falling drops to it.
{
	qer_editorimage textures/gig01/drops1.tga
//	q3map_globaltexture
        {
	        map textures/gothic_block/blocks18c.tga
	        rgbGen identity
		}
        {
		map textures/gig01/drops1.tga
                tcmod scroll 0 -.02
				tcmod scale 10.0 10.0
                blendFunc add
		}
		{
		map textures/gig01/drops2.tga
                tcmod scroll 0 -.032
				tcmod scale 11.0 11.0
                blendFunc add
		}

    {
		map $lightmap
        blendFunc GL_DST_COLOR GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
}

//*******************************************************
//*******************************************************
//********************* Other ***************************
//*******************************************************
//*******************************************************
textures/gig01/botclip1
//This is similar to OA classic botclip shader
//(invisible brush that blocks bots movement, but allows weapons and human players)
//I did this to tweak its in-editor transparency, and because I had problems with original botclip in Q3Radiant.
{
	qer_editorimage textures/common/botclip.tga
	qer_trans 0.18 //Transparency IN EDITOR
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm botclip
}