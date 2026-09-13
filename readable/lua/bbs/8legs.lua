--8 legs to love
--by bridgs

cartdata("bridgs_8legstolove_1")

local scene
local next_scene
local transition_frames_left=0
local scene_frame
local level_num
local level
local level_tileset
local score
local score_cumulative
local bugs_eaten
local timer
local frames_until_spawn_bug
local spawns_until_pause
local spider
local entities
local new_entities
local web_points
local web_strands
local moving_platforms
local tiles
local level_spawn_points
local wind_frames
local wind_dir
local wind_x
local wind_y
local menu_buttons
local is_story_mode

local tile_flip_matrix={8,4,2,1,128,64,32,16}
local scenes={}
local levels={
{20,75,"garden","m##n        vrqn !@      vtr #$n !@  qsu   vr#$n !@qsu  . . o#@n opp  . .+. m!@ i86l .+.*.+. !@ e666j .+*+ ..!@ e669f.+*..+. !@ g666f..+*+. .!@ e686f.+.*+.. op e666f +*+.. w%^xe669h.+.+. y-(((g866j . .. 0((((c544daaaaaac44542233222222322323",true},
{75,107,"house","       $00#            $00#            $00#            $00#          ..)88(.mo      .+. . . .ksp!!!%.++.++.+.kul000# +.*+**+.kul000#.+*+.+*+.cwd888(.++*+.++ e0f   ..+*+.+*+.gyh    ++..++++.qyr     .ab ... i0j    444444444444    246324632643"},
{27,51,"bridge","wxwx        mwxwxwxn          yi ymwl. .   .okz kyi  .*+*+.kxwxl y .+.+.++.. jz  z  . .. .    y 444424476555555300000eg..hf11111000eg. . ..hf111!0c ..+**+. .d1@80a.+++*+*++ b19#!  +++.++.+  @$#8   . . ..   9$#vssssssssssqsu$vssssssssssssssu"},
{30,35,"construction","  0y     c    wy  wy     k    wy  wy     i    wy  wy   +...+  wyssoqsu.+*+*+.mso  wy...+.+*+..wy  wy.+++*+.++.wy  wy.+*.*++*+.wy  wy.+*.**.*+.0y  wy.+.*+.**+.wy  wy.++*+**++.wyg wy..+++++...wyoqssu  ...  msoq  wy          wyaawybbaabbaa awy"},
{14,72,"skyscrapers","                          e            gkkikkkm    . +. . o     c. .*+.++.oawwu %u.+*+.*+.qww(u %u ++*.++ s(((u %u..+.**+.s(((u %%u .*+*+ s((-u %%u.+**+..s([-u %%u ++.*+.s(768 %%u. .+*+.s(@!# %%zy0.+*. s(@!# %%324.+...s(@!# %%324   768(@!# "},
{64,20,"world"," b   b a 8   a  b  a 6 +..a78  b @da..b*++.a.6    .++.a..b.+. 9 a +*b.gefh..* a   *+.i#(#^j...  9 ++bk%#-)n.2  a  .a.m$)[%l.b.   a.4.o^-][p.+*b   +. .qsura..  b b .a. ..b.+.6  a w{y.+*++*+  a   ;:{ b+.+ a      1<0   a bc!  ba a   b         ",true}
}
local tutorial_level={30,35,"construction","                                                                                                                 mssu      moqu   wy        wy    wy        wy    wy        wy    wy        wy   msoqsoqssssoqu   wy        wy    wy        wy  "}
local tilesets={
garden={172,{240,255, 254,255, 204,204, 204,136, 200,204, 236,255, 204,204, 255,255, 232,254, 255,63, 127,1, 200,254, 200,204, 204,204}},
house={126,{0,238, 236,206, 140,200, 236,254, 255,206, 204,204, 255,207, 119,255}},
bridge={236,{19,17, 127,51, 255,63, 63,0, 127,19, 238,142, 255,255, 0,240, 0,0, 0,0, 206,8}},
construction={195,{0,0, 0,0, 0,255, 0,255}},
skyscrapers={148,{0,200, 119,119, 238,238, 247,255, 254,255, 240,255, 112,255, 238,238, 238,238, 204,204, 51,51}},
world={209,{0,0, 0,0, 252,255, 128,254, 200,236, 238,238, 238,238, 206,140, 239,8, 255,207, 255,63, 200,254, 49,247, 127,19, 247,127, 255,102, 238,63}},
}
local bug_species={
{"fly",64,{12,13,5,1},1,240,true},
{"beetle",80,{8,13,2,1},3,180},
{"hornet",112,{10,9,5,1},4,240,true},
{"firefly",96,{9,4,2,1},5,120},
{"dragonfly",73,{11,3,5,1},5,320},
{"happyfly",105,{14,13,2,1},2,240,true},
{"butterfly",89,{7,6,5,1},10,180,true}
}

local entity_classes={
spider={
vx_strands=0,
vy_strands=0,
render_layer=7,
mass=4,
max_webbing=70,
facing_x=0,
facing_y=1,
length_of_spun_web=0,
walk_counter=0,
frames_of_tile_grace=0,
frames_until_spin_web=0,
web_uncollision_frames=0,
hitstun_frames=0,
instruction_index=1,
frames_since_instruction=0,
init=function(self)
if not self.webbing then
self.webbing=self.max_webbing
end
end,
update=function(self)
self.frames_since_instruction,self.button_spin_press=increment_looping_counter(self.frames_since_instruction)
if self.instructions then
if #self.instructions>self.instruction_index and self.instructions[self.instruction_index]<=self.frames_since_instruction then
local instruction=self.instructions[self.instruction_index+1]
self.button_left,self.button_right,self.button_up,self.button_down,self.button_spin,self.button_spin_press=(char_at(instruction,2)=="a"),(char_at(instruction,4)=="d"),(char_at(instruction,1)=="w"),(char_at(instruction,3)=="s"),(char_at(instruction,5)=="z"),(char_at(instruction,6)=="+")
self.instruction_index+=2
self.frames_since_instruction=0
end
else
self.button_left,self.button_right,self.button_up,self.button_down,self.button_spin,self.button_spin_press=btn(0),btn(1),btn(2),btn(3),btn(4),btnp(4)
end
decrement_counter_prop(self,"web_uncollision_frames")
decrement_counter_prop(self,"hitstun_frames")
decrement_counter_prop(self,"frames_of_tile_grace")
decrement_counter_prop(self,"walk_counter")
local web_x,web_y,web_square_dist=calc_closest_spot_on_web(self.x,self.y,false)
local was_in_freefall=self.is_in_freefall
self.is_on_web=web_x!=nil and web_square_dist<=9 and self.web_uncollision_frames<=0 and self.hitstun_frames<=0
self.is_on_tile=is_solid_tile_at(self.x,self.y) and self.hitstun_frames<=0
self.moving_platform=self.hitstun_frames<=0 and get_moving_platform_at(self.x,self.y) or nil
self.is_in_freefall=not self.moving_platform and not self.is_on_tile and not self.is_on_web
if self.is_on_tile then
self.frames_of_tile_grace=8
end
if self.is_on_web and not self.is_on_tile then
self.x+=(web_x-self.x)/5
self.y+=(web_y-self.y)/5
elseif self.is_on_tile then
self.respawn_x,self.respawn_y=self.x,self.y
end
if self.is_in_freefall then
apply_gravity(self,0.05,0.019,0.01)
else
if self.moving_platform then
self.x+=self.moving_platform.vx
self.y+=self.moving_platform.vy
end
self.vx,self.vy=(self.button_right and 1 or 0)-(self.button_left and 1 or 0),(self.button_down and 1 or 0)-(self.button_up and 1 or 0)
if self.vx!=0 and self.vy!=0 then
self.vx*=0.7
self.vy*=0.7
end
end
if self.is_in_freefall then
local mag=self.vx_strands*self.vx_strands+self.vy_strands*self.vy_strands
self.vx+=self.vx_strands*mid(0,200*mag,1)
self.vy+=self.vy_strands*mid(0,200*mag,1)
end
self.vx,self.vy,self.vx_strands,self.vy_strands=mid(-2,self.vx,2),mid(-2,self.vy,2),0,0
self.x+=self.vx
self.y+=self.vy
local speed=sqrt(self.vx*self.vx+self.vy*self.vy)
if self.vx!=0 or self.vy!=0 then
self.facing_x,self.facing_y=self.vx/speed,self.vy/speed
end
decrement_counter_prop(self,"frames_until_spin_web")
if (self.is_spinning_web or self.is_placing_web) and not self.spun_strand.is_alive then
self.is_spinning_web,self.is_placing_web,self.spun_strand=false
self:finish_spinning_web()
end
if self.is_placing_web and self.button_spin_press then
local web_point=self:spin_web_point(true,false,true)
self.spun_strand.from,self.is_placing_web,self.spun_strand=web_point
if web_point.is_in_freefall and not web_point.has_been_anchored and speed>0.8 then
self.web_uncollision_frames=4
end
sfx(3,1)
self:finish_spinning_web()
elseif not self.is_spinning_web and self.button_spin_press then
if self.webbing>0 then
self.is_spinning_web,self.frames_until_spin_web,self.length_of_spun_web=true,0,0
local web_point=self:spin_web_point(true,true,false)
self.spun_strand=create_entity("web_strand",{from=self,to=web_point})
create_entity("web_length_hint",{
x=self.x,
y=self.y,
web_point=web_point
})
sfx(2,1)
else
sfx(13,1)
end
elseif self.is_spinning_web and not self.button_spin then
self.is_placing_web,self.is_spinning_web=true
sfx(-1,1)
end
if self.is_spinning_web and self.frames_until_spin_web<=0 and self.length_of_spun_web<25 then
if self.webbing>0 then
local web_point=self:spin_web_point(false,true,false)
self.length_of_spun_web+=1
self.spun_strand.from=web_point
self.frames_until_spin_web,self.spun_strand=5,create_entity("web_strand",{from=self,to=web_point})
decrement_counter_prop(self,"webbing")
elseif scene_frame%8==0 then
sfx(13,1)
end
end
self.x=mid(4,self.x,123)
if level_tileset=="bridge" then
if self.y>110 and not self.is_on_tile then
create_entity("splash",extract_props(self,{"x","y"}))
sfx(14,0)
self:die()
end
else
self.y=(self.is_on_tile or level[5]) and mid(2,self.y,116) or max(2,self.y)
if self.y>=130 then
self:die()
end
end
if self.walk_counter<=0 and not self.is_in_freefall and (self.vx!=0 or self.vy!=0) then
self.walk_counter=7
sfx(0,0)
end
if self.is_in_freefall and not was_in_freefall then
sfx(1,0)
end
end,
draw=function(self)
local sprite,dx,dy,flipped_x,flipped_y=29,3.5,3.5
if self.facing_x<-0.4 then
flipped_x,dx=true,2.5
elseif self.facing_x<0.4 then
sprite=13
end
if self.facing_y<-0.4 then
flipped_y,dy=true,2.5
elseif self.facing_y<0.4 then
sprite=45
end
if not self.is_in_freefall and (self.vx!=0 or self.vy!=0) then
sprite+=1+flr(scene_frame%10/5)
end
if spider.hitstun_frames%4<2 then
spr(sprite,self.x-dx,self.y-dy,1,1,flipped_x,flipped_y)
end
end,
on_death=function(self)
sfx(-1,1)
self:finish_spinning_web()
create_entity("spider_respawn",extract_props(self,{"x","y","respawn_x","respawn_y","webbing"}))
end,
spin_web_point=function(self,can_be_fixed,is_being_spun,prefer_tile)
local x,y=self.x,self.y
local moving_platform=get_moving_platform_at(x,y)
local is_fixed=can_be_fixed and (moving_platform or is_solid_tile_at(x,y))
if can_be_fixed and not (is_fixed and prefer_tile) then
local web_point,square_dist=calc_closest_web_point(x,y,true,true)
if square_dist<81 then
return web_point
end
end
if not is_fixed and can_be_fixed and self.frames_of_tile_grace>0 then
is_fixed,x,y=true,self.respawn_x,self.respawn_y
end
return create_entity("web_point",{
x=x,
y=y,
vx=self.vx-self.facing_x,
vy=self.vy-self.facing_y,
has_been_anchored=is_fixed,
is_being_spun=is_being_spun,
is_in_freefall=not is_fixed,
moving_platform=moving_platform
})
end,
finish_spinning_web=function(self)
foreach(web_points,function(web_point)
web_point.is_being_spun=false
end)
end
},
web_length_hint={
render_layer=8,
radius=5,
update=function(self)
if self.web_point then
self.x,self.y=self.web_point.x,self.web_point.y
end
if spider and spider.is_spinning_web and spider.webbing>0 and spider.length_of_spun_web<25 then
self.radius+=1.5
end
if self.frames_to_death<=0 and (not self.web_point.is_alive or not spider or not spider.is_alive or not (spider.is_placing_web or spider.is_spinning_web)) then
self.frames_to_death=3
end
end,
draw=function(self)
local x,y,f,r,s,a=self.x,self.y,self.frames_to_death,self.radius,8
if r<15 then
s=20
elseif r<30 then
s=12
end
for a=0,360,s do
pset(x+r*cos((a+self.frames_alive)/360),y+r*sin((a+self.frames_alive)/360),7)
end
end
},
spider_respawn={
frames_to_death=60,
init=function(self)
sfx(11,1)
end,
update=function(self)
self.x+=(self.respawn_x-self.x)/self.frames_to_death
self.y+=(self.respawn_y-self.y)/self.frames_to_death
end,
draw=function(self)
local x,y,f=self.x,self.y,self.frames_to_death
local r=(1100-(f-30)*(f-30))/100
local s,c=r*sin(f/40),r*cos(f/40)
color(7+self.frames_to_death/4%6)
circ(x+s,y+c,1)
circ(x-s,y-c,1)
circ(x-c,y+s,1)
circ(x+c,y-s,1)
end,
on_death=function(self)
spider=create_entity("spider",extract_props(self,{"x","y","respawn_x","respawn_y","instructions","webbing"}))
end
},
web_point={
vx_strands=0,
vy_strands=0,
mass=1,
add_to_game=function(self)
add(web_points,self)
end,
update=function(self)
if self.is_in_freefall then
self.mass=1
if level_tileset=="bridge" and self.y>=110 then
self.mass=2.5
end
apply_gravity(self,0.02,0.02,0.01)
self.vx+=self.vx_strands
self.vy+=self.vy_strands
self.vx_strands,self.vy_strands=0,0
self.vx,self.vy=0.9*mid(-3,self.vx,3),0.9*mid(-3,self.vy,3)
self.x+=self.vx
self.y+=self.vy
elseif self.moving_platform then
self.x+=self.moving_platform.vx
self.y+=self.moving_platform.vy
end
if self.x<-20 or self.x>147 or self.y<-20 or self.y>180 then
self:die()
end
if self.frames_alive>1 and not self.has_strands_attached then
self:die()
end
self.has_strands_attached=false
end
},
web_strand={
render_layer=4,
stretched_length=5,
percent_elasticity_remaining=1,
add_to_game=function(self)
add(web_strands,self)
end,
update=function(self)
local from,to=self.from,self.to
from.has_strands_attached,to.has_strands_attached=true,true
if from.class_name=="web_point" and to.class_name=="web_point" and not from.is_being_spun and not to.is_being_spun and (from.has_been_anchored or to.has_been_anchored) then
from.has_been_anchored,to.has_been_anchored=true,true
end
local dx,dy=to.x-from.x,to.y-from.y
local len=sqrt(dx*dx+dy*dy)
local percent_elasticity=mid(0,(25-len)/11.75,1)
if percent_elasticity<self.percent_elasticity_remaining then
self.percent_elasticity_remaining,self.stretched_length=percent_elasticity,len/(1+1.65*percent_elasticity)
end
if len>self.stretched_length and self.percent_elasticity_remaining>0 then
local f=(len-self.stretched_length)/4
local from_mult,to_mult=f*to.mass/from.mass/len,f*from.mass/to.mass/len
if from.is_in_freefall then
from.vx_strands+=mid(-2,from_mult*dx,2)
from.vy_strands+=mid(-2,from_mult*dy,2)
end
if to.is_in_freefall then
to.vx_strands-=mid(-2,to_mult*dx,2)
to.vy_strands-=mid(-2,to_mult*dy,2)
end
end
if len>=25 or not from.is_alive or not to.is_alive then
self:die()
sfx(9,0)
end
end,
draw=function(self)
color(({8,8,9,15,7})[ceil(1+4*self.percent_elasticity_remaining)])
if level_tileset=="bridge" then
if self.from.y>=115 and self.to.y>=115 then
color(13)
elseif self.from.y>=110 and self.to.y>=110 then
color(6)
end
end
line(self.from.x,self.from.y,self.to.x,self.to.y)
end
},
bug_spawn_flash={
render_layer=1,
frames_to_death=15,
draw=function(self)
if self.frames_to_death<=15 then
colorwash(bug_species[self.species][3][1])
spr(126-ceil(self.frames_to_death/3),self.x-3,self.y-4)
pal()
end
end,
on_death=function(self)
create_entity("bug",extract_props(self,{"species","x","y"}))
end
},
bug={
render_layer=2,
frames_until_escape=0,
vy=0.35,
init=function(self)
local k,v
for k,v in pairs({"species_name","base_sprite","colors","points","escape_frames","wiggles"}) do
self[v]=bug_species[self.species][k]
end
create_entity("spawn_ring",{target=self})
sfx(7,2)
end,
update=function(self)
local species_name=self.species_name
if self.frames_alive<45 then
self.vy*=0.95
end
if self.frames_alive==35 and species_name!="hornet" then
self.is_consumable=true
elseif self.frames_alive==45 then
self.render_layer,self.vy,self.is_catchable=5,0,true
elseif self.frames_alive>80 and self.is_catchable then
self:escape()
end
local web_point,square_dist=calc_closest_web_point(self.x,self.y,true)
if self.is_catchable and web_point and square_dist<36 then
self.frames_until_escape,self.caught_web_point,web_point.caught_bug,self.is_consumable,self.is_catchable=self.escape_frames,web_point,self,true
end
if self.frames_until_escape>0 and self.caught_web_point then
if decrement_counter_prop(self,"frames_until_escape") then
if species_name=="firefly" then
create_entity("firefly_explosion",extract_props(self,{"x","y"}))
foreach(web_points,function(web_point)
local dist=sqrt(calc_square_dist(self.x,self.y,web_point.x,web_point.y))
if dist<10 then
web_point.die(web_point)
elseif dist<30 then
local x,y=create_vector(web_point.x-self.x,web_point.y-self.y,(30-dist)/8)
web_point.vx+=x
web_point.vy+=y
end
end)
if spider and spider.is_alive then
if calc_square_dist(self.x,self.y,spider.x,spider.y)<625 then
spider.vx,spider.vy=create_vector(spider.x-self.x,spider.y-self.y,1.5)
spider.hitstun_frames=25
end
end
sfx(8,3)
self:die()
else
self:escape()
end
elseif self.frames_until_escape%80==0 and species_name=="dragonfly" then
create_entity("dragonfly_fireball_spawn",{bug=self})
end
end
if self.caught_web_point then
self.x,self.y=self.caught_web_point.x,self.caught_web_point.y
if self.wiggles and self.frames_until_escape%4==0 then
self.caught_web_point.vx+=rnd(1)-0.5
self.caught_web_point.vy+=rnd(1)-0.5
end
if not self.caught_web_point.is_alive then
self:escape()
end
else
self.x+=self.vx
self.y+=self.vy
end
if spider and spider.is_alive and 49>calc_square_dist(spider.x,spider.y,self.x,self.y) then
if species_name=="hornet" and self.is_catchable then
if spider.hitstun_frames<=0 then
spider.hitstun_frames,spider.vy=25,-1.5
spider.vx*=0.5
sfx(12,2)
end
elseif self.is_consumable then
local props=extract_props(self,{"colors","x","y"})
props.text,spider.webbing="+"..self.points.."0",min(spider.webbing+1,spider.max_webbing)
create_entity("floating_points",props)
score+=self.points
bugs_eaten+=1
sfx(species_name=="butterfly" and 19 or 6,3)
self:die()
end
end
end,
draw=function(self)
if self.species_name=="hornet" and self.is_catchable and not self.caught_web_point then
local f,i=self.frames_alive/50
for i=1,5 do
line(self.x+7*cos(f+i/3),self.y+7*sin(f+i/3),self.x+7*cos(f+(i+1)/3),self.y+7*sin(f+(i+1)/3),8)
end
end
local sprite=self.base_sprite
if self.caught_web_point then
sprite+=4+flr(self.frames_alive/5)%3
if self.species_name=="firefly" and self.frames_until_escape<105 and self.frames_until_escape%35>25 then
colorwash(8)
if self.frames_until_escape%35==34 then
sfx(21,2)
end
end
else
if self.frames_alive%6<3 then
sprite+=1
end
if self.is_catchable then
sprite+=2
end
if self.frames_to_death>0 then
sprite+=2
colorwash(self.colors[4-flr(self.frames_to_death/4)])
end
end
spr(sprite,self.x-3,self.y-4)
pal()
if self.species_name=="firefly" and self.caught_web_point and self.frames_until_escape<=105 then
print(ceil(self.frames_until_escape/35),self.x,self.y-10,8)
end
end,
escape=function(self)
if self.caught_web_point then
if self.species_name=="beetle" then
self.caught_web_point:die()
end
self.caught_web_point.caught_bug,self.caught_web_point=nil
end
self.render_layer,self.frames_to_death,self.vy,self.is_catchable,self.is_consumable=8,12,-1.5
sfx(20,2)
end,
on_death=function(self)
if self.caught_web_point then
self.caught_web_point.caught_bug=nil
end
end
},
dragonfly_fireball_spawn={
render_layer=4,
frames_to_death=30,
draw=function(self)
local x,y,f=self.bug.x,self.bug.y,self.frames_alive
local s,c,r=(10-f/3)*sin(f/100),(10-f/3)*cos(f/100),f/20
color(8)
circfill(x+s,y+c,r)
circfill(x-s,y-c,r)
circfill(x-c,y+s,r)
circfill(x+c,y-s,r)
end,
on_death=function(self)
if self.bug.is_alive and self.bug.caught_web_point and spider and spider.is_alive then
local dx,dy=spider.x-self.bug.x,spider.y-self.bug.y
local dist=max(1,sqrt(dx*dx+dy*dy))
sfx(20,2)
create_entity("dragonfly_fireball",{
x=self.bug.x,
y=self.bug.y,
vx=dx/dist,
vy=dy/dist
})
end
end
},
dragonfly_fireball={
frames_to_death=150,
render_layer=6,
update=function(self)
self.x+=self.vx
self.y+=self.vy
if spider and spider.is_alive and spider.hitstun_frames<=0 and 9>calc_square_dist(self.x,self.y,spider.x,spider.y) then
spider.hitstun_frames,spider.vy=25,-1.5
spider.vx*=0.5
sfx(12,2)
self:die()
end
end,
draw=function(self)
circfill(self.x,self.y,1,8)
end
},
firefly_explosion={
frames_to_death=18,
render_layer=2,
draw=function(self)
local x,y,f=self.x+rnd(2)-1,self.y+rnd(2)-1,flr(self.frames_alive)
local r=9+1.8*f-f*f/20
color(f>=12 and 1 or 7-flr(f/4))
if f<16 then
circfill(x,y,r)
else
circ(x,y,r)
end
end
},
floating_points={
render_layer=9,
frames_to_death=34,
update=function(self)
self.y-=0.5
end,
draw=function(self)
print(self.text,self.x-2*#self.text,self.y-2,self.colors[max(1,flr(self.frames_alive/2-11))])
pal()
end
},
spawn_ring={
render_layer=1,
frames_to_death=48,
draw=function(self)
circ(self.target.x,self.target.y,15-self.frames_alive/4,1)
end
},
splash={
frames_to_death=18,
draw=function(self)
circ(self.x,self.y,self.frames_alive/3,self.frames_alive>8 and 6 or 7)
end
},
level_intro={
x=59,
frames_to_death=200,
draw=function(self)
local f=self.frames_alive-40
if f>2 then
local colors,j,i={1,5,13,6,7},mid(flr(f/4),1,flr(40-f/4))
for i=j,#colors do
pal(colors[i],colors[j])
end
spr(38,44,self.y-13)
sspr(48,24,32,8,43,self.y-5)
spr(57+level_num,75,self.y-6)
pal()
end
end,
on_death=function(self)
create_entity("spider_respawn",extract_props(self,{"x","y","respawn_x","respawn_y"}))
end
},
moving_platform={
render_layer=3,
add_to_game=function(self)
add(moving_platforms,self)
end,
init=function(self)
self.chains=create_entity("chains")
end,
update=function(self)
local f=self.frames_alive%357
if f<128 then
self.vy=0.5
elseif 178<f and f<=306 then
self.vy=-0.5
else
self.vy=0
end
self.x+=self.vx
self.y+=self.vy
self.chains.x,self.chains.y=self.x,self.y
end,
draw=function(self)
sspr(72,96,40,8,self.x,self.y)
spr(197,self.x+8,self.y-8)
end,
contains_point=function(self,x,y)
if x>=self.x+8 and x<self.x+16 and y>=self.y-6 and y<self.y then
return true
end
return x>=self.x and y>=self.y and x<self.x+40 and y<self.y+8
end
},
chains={
render_layer=2,
draw=function(self)
local y
for y=self.y-8,-8,-8 do
spr(196,self.x,y)
spr(196,self.x+33,y)
end
end
},
wind_particle={
render_layer=1,
update=function(self)
self.vx+=wind_x/20
self.vy+=wind_y/20
self.vx,self.vy=self.vx*0.96+0.01*wind_dir,self.vy*0.96
self.x+=self.vx*self.move_scale
self.y+=self.vy*self.move_scale
self.x,self.y=wrap_number(-10,self.x,138),wrap_number(-10,self.y,130)
end,
draw=function(self)
local tail_mult=(self.vx*self.vx+self.vy*self.vy<0.2 and 0 or 1.5)
line(self.x,self.y,self.x-self.vx*tail_mult,self.y-self.vy*tail_mult,1)
end
},
speech_box={
x=8,
y=14,
characters_per_line=28,
characters_shown=0,
frames_fully_shown=0,
update=function(self)
self.characters_shown=min(self.characters_shown+1,#self.text)
if self.characters_shown>=#self.text then
self.frames_fully_shown=increment_looping_counter(self.frames_fully_shown)
else
local c=char_at(self.text,self.characters_shown)
if c!=" " and c!="/" then
sfx(4,3)
end
end
end,
draw=function(self)
local c,r=self.characters_per_line
for r=0,3 do
local text=sub(self.text,c*r+r+1,min(self.characters_shown,c*r+r+c))
print(text,self.x,self.y+9*r,7)
end
end
},
buttons={
button_index=1,
init=function(self)
self.button_entities={}
local i
for i=1,#self.buttons do
add(self.button_entities,create_entity("button",{
text=self.buttons[i],
y=self.y-16+16*i
}))
end
self.button_entities[self.button_index].is_highlighted=true
end,
update=function(self)
if (btnp(2) or btnp(3)) and not self.frozen then
self.button_entities[self.button_index].is_highlighted=false
self.button_index=wrap_number(1,self.button_index + (btnp(3) and 1 or 0) - (btnp(2) and 1 or 0),#self.button_entities)
self.button_entities[self.button_index].is_highlighted=true
sfx(18,0)
end
end,
select=function(self)
if not self.frozen then
self.frozen,self.button_entities[self.button_index].blink_frames=true,2
end
end
},
button={
blink_frames=0,
draw=function(self)
decrement_counter_prop(self,"blink_frames")
if self.blink_frames<=0 then
color(7)
local y,d,d2=self.y,0,0
if self.is_highlighted then
line(11,y+11,116,y+11,5)
color(7)
spr(8,57,y-4)
spr(8,62,y-4,1,1,true)
spr(22,57,y+7)
spr(22,62,y+7,1,1,true)
d2=7
else
colorwash(13)
d=2
end
line(15,y,63-d2,y)
line(63+d2,y,112,y)
line(15,y+10,63-d2,y+10)
line(63+d2,y+10,112,y+10)
spr(7,7+d,y-1)
spr(7,7+d,y+4,1,1,false,true)
spr(7,113-d,y-1,1,1,true)
spr(7,113-d,y+4,1,1,true,true)
print(self.text,64-2*#self.text,y+3)
pal()
end
end
},
game_event_text={
render_layer=3,
x=64,
frames_to_death=100,
init=function(self)
sfx(17,3)
end,
draw=function(self)
color(({7,6,5,1})[mid(1,flr(self.frames_alive/4-20),4)])
local wiggle=self.frames_alive<4 and 2*(self.frames_alive%2)-1 or 0
print(self.text,self.x+wiggle-2*#self.text,self.y)
end
},
painting1={
render_layer=3,
draw=function(self)
sspr(56,32,16,32,64)
end
},
painting2={
render_layer=3,
draw=function(self)
sspr(80,0,24,16,0,56)
end
},
tumble_spider={
x=-10,
y=66,
vx=0.5,
update=function(self)
self.vy=mid(-2,self.vy+(btn(3) and 0.01 or 0)-(btn(2) and 0.01 or 0),2)
self.x+=self.vx
self.y=mid(20,self.y+self.vy,100)
if self.x>130 then
self:die()
end
end,
draw=function(self)
local i=1+flr(self.frames_alive/10)%8
local frame=({13,29,45,29,13,29,45,29})[i]
spr(frame,self.x-3.5,self.y-3.5,1,1,i==1 or i>5,i>3 and i<8)
end,
on_death=function()
spider=nil
end
},
galaxy={
x=-1,
y=-1,
init=function(self)
self.dist,self.angle=rnd(5)+rnd(12)*rnd(12),rnd(360)
self.speed,self.color=10/self.dist,({7,10,9,12,13,13,1})[mid(1,flr(self.dist/5),7)]
if rnd(1)<0.1 then
self.color=({3,7,10,14})[rnd_int(1,4)]
end
end,
update=function(self)
self.angle+=self.speed
self.x,self.y=64+self.dist*cos(self.angle/360),80+self.dist*sin(self.angle/360)/3
if spider and spider.is_alive and calc_square_dist(self.x,self.y,spider.x,spider.y)<9 then
local props=extract_props(self,{"colors","x","y"})
create_entity("floating_points",{
x=self.x,
y=self.y,
colors={12,13,5,1},
text="+10"
})
score+=1
bugs_eaten+=1
sfx(6,3)
self:die()
end
end,
draw=function(self)
pset(self.x,self.y,self.color)
end
}
}


function _init()
init_scene("title")
end

function _update()
if transition_frames_left>0 then
transition_frames_left=decrement_counter(transition_frames_left)
if transition_frames_left==30 then
init_scene(next_scene)
end
end
scene_frame=increment_looping_counter(scene_frame)
scenes[scene][2]()
end

function _draw()
camera()
rectfill(0,0,127,127,0)
scenes[scene][3]()
camera()
if transition_frames_left>0 then
local t,x,y=transition_frames_left
if t<30 then
t+=30
end
for y=0,128,6 do
for x=0,128,6 do
local size=mid(0,50-t-y/10-x/40,4)
if transition_frames_left<30 then
size=4-size
end
if size>0 then
circfill(x,y,size,0)
end
end
end
end
end


function update_title()
if btnp(4) and transition_frames_left<=0 then
sfx(5,0)
transition_to_scene("menu")
end
end

function draw_title()
draw_corners()
sspr(0,0,48,32,40,26)
line(73,58,73,74,7)
spr(13,69,75)
if scene_frame%30<20 then
print("press z to start",32,100,7)
end
end


function init_menu()
init_simulation()
menu_buttons=create_entity("buttons",{
y=46,
buttons={"play game","how to play","level select","credits + scores"}
})
end

function update_menu()
update_simulation()
if scene_frame>7 and transition_frames_left<=0 then
if btnp(4) then
menu_buttons:select()
local button_index=menu_buttons.button_index
if button_index==1 then
level_num,score_cumulative,is_story_mode=1,0,true
transition_to_scene("game")
elseif button_index==2 then
transition_to_scene("tutorial")
elseif button_index==3 then
init_scene("level_select")
elseif button_index==4 then
init_scene("credits")
end
sfx(button_index<3 and 5 or 4,0)
elseif btnp(5) then
sfx(5,0)
transition_to_scene("title")
end
end
end

function draw_menu()
draw_corners()
print("press z to select an option",10,26,7)
draw_simulation()
end


function init_tutorial()
init_simulation()
level,level_tileset=tutorial_level,tutorial_level[3]
load_tiles(level[4])
end

function update_tutorial()
update_simulation()
local speech_text,speech_frames
if scene_frame==45 then
create_entity("spider_respawn",{
x=64,
y=30,
respawn_x=64,
respawn_y=97,
instructions={
70,
" a    ",20,
"   d  ",40,
" a    ",20,
"      ",10,
" a    ",35,
"wa    ",10,
"w     ",30,
"   d  ",10,
"      ",130,
"    z+",40,
"      ",50,
"   d  ",73,
"w  d  ",10,
"w     ",30,
" a    ",8,
"      ",121,
"     +",10,
"   d  ",10,
"      ",220,
" a    ",45,
"      ",60,
"  s z+",25,
"   d  ",35,
"wa   +",45,
" as z+",19,
"      ",9,
"w  d +",31,
"  s   ",1,
"      "
}
})
elseif scene_frame==105 then
speech_text,speech_frames="                            / use the arrow keys to move./",200
elseif scene_frame==365 then
speech_text,speech_frames="     hold z to spin web.    /    the longer it's held,   /    the longer the strand.  ",250
elseif scene_frame==715 then
speech_text,speech_frames="       tap z again to       /    place the other end     /        of the web.         ",170
elseif scene_frame==915 then
speech_text,speech_frames="     catch bugs in your     /     web, then eat them     /      to gain points.       ",200
elseif scene_frame==965 then
create_entity("bug_spawn_flash",{
frames_to_death=15,
species=1,
x=64,
y=56
})
elseif scene_frame==1165 then
speech_text,speech_frames="      build a nice web,     /    eat some tasty bugs,    /        and have fun!       ",500
elseif scene_frame==1415 then
transition_to_scene("title")
end
if speech_text then
create_entity("speech_box",{
text=speech_text,
frames_to_death=speech_frames
})
end
end

function draw_tutorial()
draw_corners()
camera(0,-8)
draw_simulation()
end


function init_level_select()
init_simulation()
menu_buttons=create_entity("buttons",{
y=24,
buttons={"garden","house","bridge","construction","skyscrapers","world"}
})
end

function update_level_select()
update_simulation()
if scene_frame>7 and transition_frames_left<=0 then
if btnp(4) then
menu_buttons:select()
level_num,score_cumulative,is_story_mode=menu_buttons.button_index,0
sfx(5,0)
transition_to_scene("game")
elseif btnp(5) then
sfx(4,0)
init_scene("menu")
end
end
end

function draw_level_select()
draw_corners()
draw_simulation()
local i
for i=1,6 do
spr(38+i,100,9+16*i)
end
print("select a level",36,10,7)
end


function init_game()
local i
init_simulation()
level,timer,frames_until_spawn_bug,spawns_until_pause=levels[level_num],141,0,3
level_tileset=level[3]
load_tiles(level[4])
create_entity("level_intro",{
respawn_x=level[1],
respawn_y=level[2],
y=level_num==6 and 30 or 46
})
if level_tileset=="construction" then
create_entity("moving_platform",{x=52,y=32})
elseif level_tileset=="skyscrapers" then
wind_frames,wind_dir,wind_x,wind_y=300,1,0,0
for i=1,50 do
create_entity("wind_particle",{
x=rnd_int(0,128),
y=rnd_int(0,120),
move_scale=0.25+rnd(0.75)
})
end
elseif level_tileset=="house" then
create_entity("painting1")
create_entity("painting2")
end
end

function update_game()
if scene_frame==62 then
music(0)
end
if scene_frame%30==0 then
timer=decrement_counter(timer)
local game_event_text
if timer<=0 then
transition_to_scene("scoring")
elseif timer==130 then
game_event_text="build a web!"
elseif timer==100 then
game_event_text="10 seconds!"
elseif timer==91 then
game_event_text="catch bugs!"
elseif timer==5 then
game_event_text="5 seconds!"
elseif timer==30 then
spawn_bugs(7,1)
end
if game_event_text then
create_entity("game_event_text",{
text=game_event_text,
y=level_num==6 and 26 or 42
})
end
end
if timer==mid(4,timer,90) then
local phase=min(flr(4-timer/30),3)
frames_until_spawn_bug=decrement_counter(frames_until_spawn_bug)
if frames_until_spawn_bug<=0 then
local max_bug_species_index,num_bugs,bug_species_index,i=min(level_num-(phase==1 and 1 or 0),5),rnd_int(1,3),((level_num>1 or phase>1) and rnd(1)<0.2 and 6 or 1)
for i=max_bug_species_index,2,-1 do
if rnd(1)<(level_num==i and phase==2 and 0.3 or 0.1) then
bug_species_index=i
end
end
spawn_bugs(bug_species_index,num_bugs)
frames_until_spawn_bug=15*flr(num_bugs+max(1,3-phase)+rnd(min(8-2*phase,4)))
spawns_until_pause=decrement_counter(spawns_until_pause)
if spawns_until_pause<=0 then
spawns_until_pause=rnd_int(3,3+2*phase)
frames_until_spawn_bug+=120
end
end
end
if level_tileset=="skyscrapers" then
wind_frames=decrement_counter(wind_frames)
if wind_frames<=0 then
if wind_x==0 and wind_y==0 then
wind_dir,wind_frames,wind_x,wind_y=-1*wind_dir,rnd_int(175,300),wind_dir*rnd_int(2,4),rnd_int(-2,1)/2
sfx(15,2)
else
wind_frames,wind_x,wind_y=rnd_int(125,250),0,0
sfx(16,2)
end
end
end
update_simulation()
end

function draw_game()
camera(0,-8)
draw_simulation()
camera()
rectfill(0,0,127,7,0)
color(spider and spider.is_spinning_web and 7 or 5)
rectfill(35,2,35+50*(spider and spider.webbing/spider.max_webbing or 1),5)
rect(35,1,85,6)
spr(23,87,0)
if timer<=5 and scene_frame%30<=20 then
color(8)
else
color(7)
end
local t=min(timer,135)
print(flr(t/60)..":"..(t%60<10 and "0" or "")..t%60,112,2)
print(score_cumulative+score<=0 and "0" or (score_cumulative+score).."0",1,2,7)
end


function init_scoring()
score_cumulative+=score
if level_num>0 and dget(level_num)<=score then
dset(level_num,score)
end
if is_story_mode and dget(0)<=score_cumulative then
dset(0,score_cumulative)
end
end

function update_scoring()
local final_frame=74+bugs_eaten+score
if scene_frame>15 and btnp(4) then
if scene_frame<final_frame then
sfx(4,0)
scene_frame=final_frame+30
elseif transition_frames_left<=0 then
sfx(5,0)
if not is_story_mode or level_num<0 then
transition_to_scene("title")
elseif level_num<#levels then
level_num+=1
transition_to_scene("game")
else
transition_to_scene("ending")
end
end
end
end

function draw_scoring()
draw_corners()
color(7)
print("level complete!",35,24)
line(35,30,92,30)
local f,score_text=scene_frame-40
local b=mid(0,f,bugs_eaten)
if f>0 then
print(level_num<0 and "galaxies eaten" or "bugs eaten",17,45)
print(b,107-4*#(""..b),45)
if b<bugs_eaten then
sfx(10,0)
end
end
if f>bugs_eaten+20 then
print("score",17,59)
local s=mid(0,f-bugs_eaten-20,score)
score_text=s==0 and "0" or s.."0"
print(score_text,107-4*#score_text,59)
if s<score then
sfx(10,0)
end
end
if f>bugs_eaten+score+40 then
print("total score",17,73)
score_text=score_cumulative==0 and "0" or score_cumulative.."0"
print(score_text,107-4*#score_text,73)
end
if f==0 or f==bugs_eaten+20 or f==bugs_eaten+score+40 then
sfx(10,0)
end
if f>bugs_eaten+score+60 then
if (f-bugs_eaten-score-60)%30<20 then
color(13)
if level_num>0 and dget(level_num)<=score then
print("best!",108,57)
end
if is_story_mode and dget(0)<=score_cumulative then
print("best!",108,71)
end
print("press z to continue",26,93)
end
end
end


function update_credits()
if scene_frame>7 and (btnp(4) or btnp(5)) then
sfx(4,0)
init_scene("menu")
end
end

function draw_credits()
draw_corners()
color(7)
print("created by bridgs",30,13)
print("your high scores",32,44)
print("press z to return",30,110)
color(13)
print("http://brid.gs",36,20)
print("@bridgs_dev",42,27)
local i
for i=1,7 do
local s=dget(i==7 and 0 or i)
score_text=s==0 and "0" or s.."0"
print(i==7 and "playthrough" or levels[i][3],17,44+7*i)
print(score_text,107-4*#score_text,44+7*i)
end
end


function init_ending()
level_num=-1
init_simulation()
local i
for i=1,150 do
create_entity("galaxy")
end
end

function update_ending()
update_simulation()
if scene_frame==40 then
music(2)
elseif scene_frame==300 then
spider=create_entity("tumble_spider")
elseif scene_frame==625 then
transition_to_scene("scoring")
end
end

function draw_ending()
draw_simulation()
if scene_frame>230 then
print("thanks for playing!",23,20,7)
spr(24,99,18)
end
end


function init_simulation()
score,bugs_eaten,entities,new_entities,web_points,web_strands,moving_platforms,spider=0,0,{},{},{},{},{}
reset_tiles()
end

function update_simulation()
foreach(entities,function(entity)
entity:update()
entity.frames_alive=increment_looping_counter(entity.frames_alive)
if entity.frames_to_death>0 and decrement_counter_prop(entity,"frames_to_death") then
entity:die()
end
end)
add_new_entities_to_game()
filter_entity_list(entities)
filter_entity_list(web_strands)
filter_entity_list(web_points)
filter_entity_list(moving_platforms)
local i,j
for i=1,#entities do
j=i
while j>1 and entities[j-1].render_layer>entities[j].render_layer do
entities[j],entities[j-1]=entities[j-1],entities[j]
j-=1
end
end
end

function draw_simulation()
local i,j
for i=1,#entities do
if entities[i].render_layer>2 then
j=i
break
end
entities[i]:draw()
end
foreach(tiles,function(tile)
if tile then
spr(tile.sprite,8*tile.col-8,8*tile.row-8,1,1,tile.is_flipped)
end
end)
if j then
for i=j,#entities do
entities[i].draw(entities[i])
end
end
end


function create_entity(class_name,args)
local entity,k,v={
class_name=class_name,
render_layer=5,
x=0,
y=0,
vx=0,
vy=0,
is_alive=true,
frames_alive=0,
frames_to_death=0,
add_to_game=noop,
init=noop,
update=noop,
draw=noop,
on_death=noop,
die=function(self)
self:on_death()
self.is_alive=false
end
}
for k,v in pairs(entity_classes[class_name]) do
entity[k]=v
end
for k,v in pairs(args or {}) do
entity[k]=v
end
entity:init(args or {})
add(new_entities,entity)
return entity
end

function add_new_entities_to_game()
foreach(new_entities,function(entity)
entity:add_to_game()
add(entities,entity)
end)
new_entities={}
end

function spawn_bugs(bug_species_index,num_bugs)
local spawn_point,dir_x,dir_y=level_spawn_points[num_bugs][rnd_int(1,#level_spawn_points[num_bugs])],rnd_int(-1,1),rnd_int(-1,1)
if dir_x==0 and dir_y==0 then
dir_x=1
end
for i=1,num_bugs do
create_entity("bug_spawn_flash",{
frames_to_death=15*i,
species=bug_species_index,
x=8*(spawn_point[1]+i*dir_x-dir_x)-5,
y=8*(spawn_point[2]+i*dir_y-dir_y)-10
})
end
end


function reset_tiles()
local i
tiles,level_spawn_points={},{{},{},{}}
for i=1,240 do
tiles[i]=false
end
end

function load_tiles(map)
local i,c,r
for c=1,16 do
for r=1,15 do
local tile_coords,s,tile_index,i={c,r},r*16+c-16
local symbol,tile_symbols=char_at(map,s),"abcdefghijklmnopqrstuvwxyz0123456789!@#$%^()-=[]{}:;<>/?`~"
for i=1,#tile_symbols do
if symbol==char_at(tile_symbols,i) then
tile_index=i
break
end
end
if tile_index then
tiles[c*15+r-15]=create_tile(tilesets[level_tileset],tile_index,c,r)
end
local i,j=symbol=="*" and 3 or (symbol=="+" and 2 or (symbol=="." and 1 or 0))
for j=1,i do
add(level_spawn_points[j],tile_coords)
end
end
end
end

function create_tile(tileset,tile_index,col,row)
local is_flipped,half_tile_index,solid_bits,i=(tile_index%2==0),ceil(tile_index/2),{255,255}
if #tileset[2]>=2*half_tile_index then
solid_bits={tileset[2][2*half_tile_index-1],tileset[2][2*half_tile_index]}
end
if is_flipped then
for i=1,2 do
local new_bits,j=0
for j=1,#tile_flip_matrix do
if band(solid_bits[i],2^(j-1))>0 then
new_bits+=tile_flip_matrix[j]
end
end
solid_bits[i]=new_bits
end
end
return {
sprite=tileset[1]+half_tile_index-1,
col=col,
row=row,
is_flipped=is_flipped,
solid_bits=solid_bits
}
end

function get_tile_at(x,y)
if 0<=y and y<=116 then
return tiles[1+flr(x/8)*15+flr(y/8)]
end
end

function get_moving_platform_at(x,y)
local i
for i=1,#moving_platforms do
if moving_platforms[i].contains_point(moving_platforms[i],x,y) then
return moving_platforms[i]
end
end
end

function is_solid_tile_at(x,y)
local tile,bit,i=get_tile_at(x,y),1+flr(x/2)%4+4*(flr(y/2)%4)
if tile then
if bit>8 then
return band(2^(bit-9),tile.solid_bits[2])>0
end
return band(2^(bit-1),tile.solid_bits[1])>0
end
return false
end


function apply_gravity(entity,grav,space_grav,wind_mag)
if level_tileset=="world" then
local square_dist,x,y=calc_square_dist(entity.x,entity.y,63,55),create_vector(63-entity.x,55-entity.y,space_grav)
if square_dist>576 then
entity.vx+=x
entity.vy+=y
end
else
entity.vy+=grav
end
if level_tileset=="skyscrapers" then
entity.vx+=wind_mag*wind_x
entity.vy+=wind_mag*wind_y
end
end

function rnd_int(min_val,max_val)
return flr(min_val+rnd(1+max_val-min_val))
end

function ceil(n)
return -flr(-n)
end

function wrap_number(min,n,max)
return n<min and max or (n>max and min or n)
end

function create_vector(x,y,magnitude)
local length=sqrt(x*x+y*y)
if length==0 then
return 0,0
end
return x*magnitude/length,y*magnitude/length
end

function calc_square_dist(x1,y1,x2,y2)
local dx,dy=x2-x1,y2-y1
local square_dist=dx*dx+dy*dy
if square_dist<0 then
return 32767
end
return square_dist
end

function calc_closest_point_on_line(x1,y1,x2,y2,cx,cy)
local dx,dy,match_x,match_y=x2-x1,y2-y1
if 0.1>dx and dx>-0.1 then
match_x,match_y=x1,cy
elseif 0.1>dy and dy>-0.1 then
match_x,match_y=cx,y1
else
local m,m2=dy/dx,-dx/dy
local b,b2=y1-m*x1,cy-m2*cx
match_x=(b2-b)/(m-m2)
match_y=m*match_x+b
end
if mid(x1,match_x,x2)==match_x and mid(y1,match_y,y2)==match_y then
return match_x,match_y
end
end


function calc_closest_web_point(x,y,allow_unanchored,allow_occupied)
local closest_square_dist,closest_web_point=9999
foreach(web_points,function(web_point)
if not web_point.is_being_spun and
(allow_occupied or not web_point.caught_bug) and
(allow_unanchored or web_point.has_been_anchored) then
local square_dist=calc_square_dist(x,y,web_point.x,web_point.y)
if square_dist>=0 and (not closest_web_point or square_dist<closest_square_dist) then
closest_web_point,closest_square_dist=web_point,square_dist
end
end
end)
return closest_web_point,closest_square_dist
end

function calc_closest_spot_on_web(x,y,allow_unanchored)
local closest_x,closest_y
local closest_web_point,closest_square_dist=calc_closest_web_point(x,y,allow_unanchored,true)
if closest_web_point then
closest_x,closest_y=closest_web_point.x,closest_web_point.y
end
foreach(web_strands,function(web_strand)
local from_obj,to_obj=web_strand.from,web_strand.to
if not from_obj.is_being_spun and not to_obj.is_being_spun and
(allow_unanchored or (from_obj.has_been_anchored and to_obj.has_been_anchored)) then
local x2,y2=calc_closest_point_on_line(from_obj.x,from_obj.y,to_obj.x,to_obj.y,x,y)
if x2 and y2 then
local square_dist=calc_square_dist(x,y,x2,y2)
if square_dist>=0 and (not closest_square_dist or square_dist<closest_square_dist) then
closest_x,closest_y,closest_square_dist=x2,y2,square_dist
end
end
end
end)
return closest_x,closest_y,closest_square_dist
end


function noop() end

function draw_corners()
spr(6,1,1)
spr(6,119,1,1,1,true)
spr(6,1,119,1,1,false,true)
spr(6,119,119,1,1,true,true)
end

function char_at(s,n)
return sub(s,n,n)
end

function init_scene(s)
scene,scene_frame,next_scene=s,0
scenes[scene][1]()
end

function transition_to_scene(s)
next_scene=s
if transition_frames_left<=0 then
transition_frames_left=60
end
end

function increment_looping_counter(n)
if n>32000 then
return 20000
end
return n+1
end

function decrement_counter_prop(obj,k)
local just_reached_zero=0<obj[k] and obj[k]<=1
obj[k]=decrement_counter(obj[k])
return just_reached_zero
end

function decrement_counter(n)
return max(0,n-1)
end

function colorwash(c)
local i
for i=1,15 do
pal(i,c)
end
end

function filter_entity_list(list)
local num_deleted,i=0
for i=1,#list do
if list[i].is_alive then
list[i-num_deleted],list[i]=list[i],nil
else
list[i]=nil
num_deleted+=1
end
end
end

function extract_props(obj,props_names)
local props,i={}
foreach(props_names,function(p)
props[p]=obj[p]
end)
return props
end


scenes={
title={noop,update_title,draw_title},
menu={init_menu,update_menu,draw_menu},
tutorial={init_tutorial,update_tutorial,draw_tutorial},
level_select={init_level_select,update_level_select,draw_level_select},
game={init_game,update_game,draw_game},
scoring={init_scoring,update_scoring,draw_scoring},
credits={noop,update_credits,draw_credits},
ending={init_ending,update_ending,draw_ending}
}

