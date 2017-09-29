zip -9r pak0.pk3 default.cfg
zip -9r pak0.pk3 CREDITS
zip -9r pak0.pk3 COPYING
zip -9r pak0.pk3 README
zip -9r pak0.pk3 LINUXNOTES
zip -9r pak0.pk3 CHANGES
zip -9r pak0.pk3 OGGVORBIS.README.txt
zip -9r pak0.pk3 SDL.README.txt
zip -9r pak0.pk3 productid.txt
zip -9r pak0.pk3 gfx/*.* -x *svn*
zip -9r pak0.pk3 icons/*.* -x *svn*
zip -9r pak0.pk3 menu/*.* -x *svn*
zip -9r pak0.pk3 models/ammo/*.* -x *svn*
zip -9r pak0.pk3 models/flags/*.* -x *svn*
zip -9r pak0.pk3 models/gibs/*.* -x *svn*
zip -9r pak0.pk3 models/mapobjects/*.* -x *svn*
zip -9r pak0.pk3 models/misc/*.* -x *svn*
rem zip -9r pak0.pk3 models/players/grism/*.* -x *svn*
rem zip -9r pak0.pk3 models/players/sarge/*.* -x *svn*
zip -9r pak0.pk3 models/powerups/*.* -x *svn*
zip -9r pak0.pk3 models/weaphits/*.* -x *svn*
zip -9r pak0.pk3 models/weapons2/*.* -x *svn*
zip -9r pak0.pk3 models/ammo/*.* -x *svn*
zip -9r pak0.pk3 models/ammo/*.* -x *svn*
zip -9r pak0.pk3 scripts/*.* -x *svn*
zip -9r pak0.pk3 sound/items/*.* -x *svn*
zip -9r pak0.pk3 sound/misc/*.* -x *svn*
zip -9r pak0.pk3 sound/movers/*.* -x *svn*
zip -9r pak0.pk3 sound/weapons/*.* -x *svn*
zip -9r pak0.pk3 sound/world/*.* -x *svn*
zip -9r pak0.pk3 sound/feedback/hit.wav -x *svn*
zip -9r pak0.pk3 sound/feedback/hit_teammate.wav -x *svn*
zip -9r pak0.pk3 sprites/*.* -x *svn*
zip -9r pak0.pk3 textures/effects/*.* -x *svn*
zip -9r pak0.pk3 textures/oafx/*.* -x *svn*
zip -9r pak0.pk3 textures/oa/*.* -x *svn*
zip -9r pak0.pk3 textures/detail/*.* -x *svn*
zip -9r pak0.pk3 vm/*.* -x *svn*
zip pak0.pk3 -d scripts/player*.shader 
zip pak0.pk3 -d scripts/bots.txt

zip pak0.pk3 sound/player/announcer/*.* -x *svn*
zip pak0.pk3 sound/player/fry.wav -x *svn*
zip pak0.pk3 sound/player/gibimp1.wav -x *svn*
zip pak0.pk3 sound/player/gibimp2.wav -x *svn*
zip pak0.pk3 sound/player/gibimp3.wav -x *svn*
zip pak0.pk3 sound/player/gibsplt1.wav -x *svn*
zip pak0.pk3 sound/player/gurp1.wav -x *svn*
zip pak0.pk3 sound/player/gurp2.wav -x *svn*
zip pak0.pk3 sound/player/land1.wav -x *svn*
zip pak0.pk3 sound/player/talk.wav -x *svn*
zip pak0.pk3 sound/player/watr_in.wav -x *svn*
zip pak0.pk3 sound/player/watr_out.wav -x *svn*
zip pak0.pk3 sound/player/watr_un.wav -x *svn*
zip pak0.pk3 sound/player/footsteps/*.* -x *svn*
zip pak0.pk3 sound/player/sarge/*.* -x *svn*

zip -9r pak1-maps.pk3 levelshots/*.* -x *svn*
zip -9r pak1-maps.pk3 maps/*.bsp -x *svn*


REM VERY VERY DIRTY SLOW WORKAROUND to get select screen working

zip -9r pak0.pk3 models/players/null.txt -x *svn*
zip -9r pak0.pk3 models/players/*.* -x *svn*

rem cut out everyone but sarge as he is the required model

zip pak0.pk3 -d models/players/hnt/*.*
zip pak0.pk3 -d models/players/angelyss/*.*
zip pak0.pk3 -d models/players/arachna/*.*
zip pak0.pk3 -d models/players/sergei/*.*
zip pak0.pk3 -d models/players/kyonshi/*.*
zip pak0.pk3 -d models/players/liz/*.*
zip pak0.pk3 -d models/players/major/*.*
zip pak0.pk3 -d models/players/ayumi/*.*
zip pak0.pk3 -d models/players/skelebot/*.*
zip pak0.pk3 -d models/players/beret/*.*
zip pak0.pk3 -d models/players/tony/*.*
zip pak0.pk3 -d models/players/penguin/*.*
zip pak0.pk3 -d models/players/gargoyle/*.*
zip pak0.pk3 -d models/players/merman/*.*
zip pak0.pk3 -d models/players/neko/*.*
zip pak0.pk3 -d models/players/smarine/*.*
zip pak0.pk3 -d models/players/assassin/*.*
zip pak0.pk3 -d models/players/slshish/*.*
zip pak0.pk3 -d models/players/dmo/*.*


zip -9r pak2-players.pk3 models/players/*.* -x *svn*
zip pak2-players.pk3 -d models/players/grism/*.*
zip pak2-players.pk3 -d models/players/sarge/*.*

copy pak2-players.pk3 pak2-players-mature.pk3

zip pak2-players-mature.pk3 -d models/players/sergei/*.*
zip pak2-players-mature.pk3 -d models/players/kyonshi/*.*
zip pak2-players-mature.pk3 -d models/players/liz/*.*
zip pak2-players-mature.pk3 -d models/players/major/*.*
zip pak2-players-mature.pk3 -d models/players/penguin/*.*
zip pak2-players-mature.pk3 -d models/players/gargoyle/*.*
zip pak2-players-mature.pk3 -d models/players/skelebot/*.*
zip pak2-players-mature.pk3 -d models/players/beret/*.*
zip pak2-players-mature.pk3 -d models/players/tony/*.*
zip pak2-players-mature.pk3 -d models/players/merman/*.*
zip pak2-players-mature.pk3 -d models/players/assassin/*.*
zip pak2-players-mature.pk3 -d models/players/smarine/*.*

zip pak2-players.pk3 -d models/players/hnt/*.*
zip pak2-players.pk3 -d models/players/angelyss/*.*
zip pak2-players.pk3 -d models/players/neko/*.*
zip pak2-players.pk3 -d models/players/arachna/*.*
zip pak2-players.pk3 -d models/players/sorceress/*.*
zip pak0.pk3 -d models/players/sorceress/*.*
zip pak2-players.pk3 -d models/players/ayumi/*.*

zip -9r pak2-players.pk3 sound/player/*.* -x *svn*
zip -9r pak2-players.pk3 scripts/player_*.* -x *svn*

rem zip pak2-players.pk3 -d models/players/grism/*.*
rem zip pak2-players.pk3 -d models/players/sarge/*.*

zip pak2-players.pk3 -d sound/player/announcer/*.*
zip pak2-players.pk3 -d sound/player/fry.wav
zip pak2-players.pk3 -d sound/player/gibimp1.wav
zip pak2-players.pk3 -d sound/player/gibimp2.wav
zip pak2-players.pk3 -d sound/player/gibimp3.wav
zip pak2-players.pk3 -d sound/player/gibsplt1.wav
zip pak2-players.pk3 -d sound/player/gurp1.wav
zip pak2-players.pk3 -d sound/player/gurp2.wav
zip pak2-players.pk3 -d sound/player/land1.wav
zip pak2-players.pk3 -d sound/player/talk.wav
zip pak2-players.pk3 -d sound/player/watr_in.wav
zip pak2-players.pk3 -d sound/player/watr_out.wav
zip pak2-players.pk3 -d sound/player/watr_un.wav
zip pak2-players.pk3 -d sound/player/footsteps/*.*
zip pak2-players.pk3 -d sound/player/sarge/*.*

zip -9r pak3-music.pk3 music/*.* -x *svn*

zip -9r pak4-textures.pk3 textures/*.* -x *svn*
zip -9r pak4-textures.pk3 env/*.* -x *svn*

zip pak4-textures.pk3 -d textures/effects/*.*
zip pak4-textures.pk3 -d textures/oafx/*.*
zip pak4-textures.pk3 -d textures/oa/*.*
zip pak4-textures.pk3 -d textures/detail/*.*

zip -9r pak5-TA.pk3 models/weapons/*.* -x *svn*
zip -9r pak5-TA.pk3 ui/*.* -x *svn*
zip -9r pak5-TA.pk3 gfx/ui/*.* -x *svn*
zip -9r pak5-TA.pk3 fonts/*.* -x *svn*

zip -9r pak6-misc.pk3 video/*.* -x *svn*
zip -9r pak6-misc.pk3 botfiles/*.* -x *svn*
zip -9r pak6-misc.pk3 sound/feedback/*.* -x *svn*
zip -9r pak6-misc.pk3 sound/teamplay/*.* -x *svn*
zip -9r pak6-misc.pk3 scripts/bots.txt -x *svn*
zip -9r pak6-misc.pk3 maps/*.aas -x *svn*
zip -9r pak6-misc.pk3 demos/*.* -x *svn*
