--frog home
--by jte   p8jam1 2015-11
--zep 2023: fixed "local dy+="

local function insert(t,k,v)
 for i=#t,k,-1 do
  t[i+1]=t[i]
 end
 t[k]=v
 return t
end

sfx(1,0)
local t=0
local ocean_y=96
local ents={}
local bgents={}
local cam_x=80
local cam_dx=80
local i_am_inside=true
local playing=false
local frog,pinkfrog,suspense,lights

local function outdoors(o)
 if i_am_inside and o then
  i_am_inside=false
  sfx(0,0)
 elseif not i_am_inside and not o then
  i_am_inside=true
  sfx(1,0)
 end
end

local function spawn_text(txt,p)
 add(ents,{
  x=64-#txt*2,
  y=80,
  t="text",
  text=txt,
  p=p
 })
end

local function spawn_ent(x,y,t,etc)
 local o={x=x*8,y=y*8,t=t}
 local ext

 if t=="frog" then
  ext={a="idle",ticks=0,flip=false}
  frog=o
 elseif t=="ball" then
  ext={f=0,mv=0,mx=0}
 elseif t=="pink frog" then
  ext={a="idle",ticks=0,flip=true}
  pinkfrog=o
 elseif t=="balloon" then
  ext={x=x*8+2,y=y*8+1,ax=x*8+4,ay=y*8+7,a=0.25,l=18+rnd(8)}
 end

 for k,v in pairs(ext or{}) do
  o[k]=v
 end
 for k,v in pairs(etc or{}) do
  o[k]=v
 end

 add(ents,o)
 return o
end

local function make_party()
 for y=0,15 do
  for x=0,127 do
   if mget(x,y) != 0 then
    mset(x,y,mget(x,y)+64)
   end
  end
 end
 del(ents,frog)

 spawn_ent(86,12,"party frog",{c=4,hat=14})
 spawn_ent(87,11,"party frog",{c=9,hat=11})
 spawn_ent(88,12,"party frog",{c=3,hat=8})
 spawn_ent(92,12,"party frog",{c=8,hat=9})
 spawn_ent(96,12,"party frog",{c=5})

 spawn_ent(86,11,"balloon",{c=8})
 spawn_ent(86,11,"balloon",{c=11})
 spawn_ent(86,11,"balloon",{c=12})
 spawn_ent(86,11,"balloon",{c=13})
 spawn_ent(86,11,"balloon",{c=14})

 spawn_ent(89,12,"balloon",{c=8})
 spawn_ent(89,12,"balloon",{c=9})
 spawn_ent(89,12,"balloon",{c=11})
 spawn_ent(89,12,"balloon",{c=13})
 spawn_ent(89,12,"balloon",{c=14})

 add(ents,frog)
end

local function remove_ent(self)
 del(ents,self)
 del(bgents,self)
end

local function update_ent(self)
 if self.t=="rain" then
  self.x -= cos(1/6)*self.s
  self.y -= sin(1/6)*self.s
  if self.x < 0 or self.y > 128 then
   remove_ent(self)
  end

 elseif self.t=="whitecap" then
 	if t%self.s == 0 then
 	 self.f += 1
 	 if self.f==8 then
    remove_ent(self)
 	 end
 	end

 elseif self.t=="cloud" then
  if not lights then
   self.x -= self.s
  end
  --> x <--
  if self.x<-(self.d+1) then
   remove_ent(self)
  end

 elseif self.t=="frog" then
  if ending then
   return
  end

  if self.x <= (cam_dx+1)*8 then
   cam_dx -= 13
  elseif self.x >= (cam_dx+15)*8 then
   cam_dx += 13
  end

  if self.ticks > 0 then
   self.ticks -= 1
   if self.a=="ribbit" and self.ticks==20 then
    sfx(3,3)
   elseif self.ticks==0 then
    if self.a=="ribbit" and abs(self.x-pinkfrog.x) <= 16 and pinkfrog.a=="idle" then
     pinkfrog.a="ribbit"
     pinkfrog.ticks=23
     sfx(9)
     if not self.ready and not lights and not suspense then
      pinkfrog.follow=true
     end
    elseif self.a=="ribbit" and lights and (flr(self.x/8) == 97 or flr(self.x/8) == 95) then
     self.flip = true
     ending = 0
   	 music(-1,1000)
    end
    self.a="idle"
    self.my=0
    self.dismount=false
    if not self.ball then
     self.x=flr(self.x/8+0.5)*8
     self.y=flr(self.y/8+0.5)*8
    end
   end
  end

  --if btn(4) and btn(5) and (self.a=="idle" or self.a=="ribbit") then
  -- sfx(-1,0)
  -- sfx(-1,3)
  -- self.a="croak"
  -- self.ticks=0
  -- self.croak=0
  --end

  if self.a=="idle" then
   local wanna_hop=false
   if btnp(4) then
    playing = true
    self.a="ribbit"
    self.ticks=23
   elseif not playing then
    -- if you're not playing,
    -- don't move.
   elseif btn(0) then
    self.flip=false
    wanna_hop=true
   elseif btn(1) then
    self.flip=true
    wanna_hop=true
   elseif btn(2) and self.ball then
     self.a="jump"
     self.mx=0
     self.my=-0.5
     self.ticks=16
   elseif btn(2) then
    local fwd=-1
    if self.flip then fwd=-fwd end
    if not fget(mget(self.x/8+fwd,self.y/8-1),0) and fget(mget(self.x/8+fwd,self.y/8),0) then
     wanna_hop=true
    else
     self.a="jump"
     self.my=-0.5
     self.ticks=16
     self.ball=nil
     for e in all(ents) do
      if e.t=="ball" and e.mv==0 and e.y==self.y and abs(self.x-e.x) < 12 and (self.flip and e.x > self.x or not self.flip and e.x < self.x) then
       self.ball=e
       self.mx=(e.x-self.x)/15
       break
      end
     end
     if not self.ball and abs(self.x-pinkfrog.x) <= 16 and pinkfrog.a=="idle" then
      pinkfrog.a="jump"
      pinkfrog.my=-0.5
      pinkfrog.ticks=15
     end
    end
   end

   if wanna_hop then
    local dohop=false
    local fwd=-1
    if self.flip then fwd=-fwd end

    local dx=flr(self.x/8+0.5)+fwd
    local dy=flr(self.y/8+0.5)

    if flr((pinkfrog.x+7)/8) == dx then
    elseif not fget(mget(dx,dy-1),0) and fget(mget(dx,dy),0) and (btn(2) or not fget(mget(dx,dy),1)) then
     dohop=true
     self.my=-0.5
    elseif (not fget(mget(dx,dy),0) or fget(mget(dx,dy),1)) and fget(mget(dx,dy+1),0) then
     dohop=true
     self.my=0
    elseif not fget(mget(dx,dy+1),0) and fget(mget(dx,dy+2),0) then
     dohop=true
     self.my=0.5
    end
    -- 2023 zep: fixed breakage
    -- was "local dy+="
    local dy=dy+(self.my*2)
    if dohop then
     self.a="hop"
     self.ticks=16
     self.mx = (dx*8 - self.x)/16
     self.my = (dy*8 - self.y)/16
     self.dismount=self.ball and true or false
     self.ball=nil
     if not fget(mget(dx,dy),1) then
      if fget(mget(dx,dy),7) or fget(mget(dx+1,dy),7) or fget(mget(dx-1,dy),7) then
       outdoors(true)
      else
       outdoors(false)
      end
     end
    end
   end
  end

  if self.a=="jump" then
   if self.ball and self.mx != 0 then
    self.x += self.mx
    if self.ticks <= 2 then
     self.my = 0.5
    end
   elseif self.ticks <= 8 then
    self.my = 0.5
    if not suspense and not lights and (pinkfrog.follow or pinkfrog.ready) and self.ticks <= 4 and mget(self.x/8+0.5,self.y/8+0.5) == 43 then
     pinkfrog.ready=false
     sfx(-1,0)
     sfx(4)
     suspense=60
    end
   end
   self.y += self.my
  elseif self.a=="hop" then
   self.x += self.mx
   if fget(mget((self.x+4)/8,self.y/8),1) then
    if not self.unlocked and mget((self.x+4)/8,self.y/8) == 31 then
     self.x -= self.mx*2
     self.a="unlocking"
     self.ticks=46
     self.unlocking=0
    else
     sfx(6)
     self.a="thump"
     self.ticks=self.flip and 9 or 10
     if not fget(mget((self.x+4)/8+1,self.y/8+1),0) then
      self.my = -0.5
     end
     local t=mget((self.x+4)/8,self.y/8)
     if self.unlocked and t==47 or t==31 then
      sfx(8)
      for y=10,12 do
       for x=81,82 do
        mset(x,y,mget(x-81,y-10))
       end
      end
     end
    end
   end
   self.y += self.my
  elseif self.a=="thump" then
   if self.flip then
    self.x -= 0.5
   else
    self.x += 0.5
   end
   self.y -= self.my
  elseif self.a=="unlocking" then
   self.unlocking += 1
   if self.unlocking > 30 then
    self.y += 0.5
    self.x += 0.22
   elseif self.unlocking==30 then
    sfx(4)
    self.unlocked=true
   end
  elseif self.a=="croak" then
   self.croak += 1
   if self.croak==30 then
    sfx(4)
   elseif self.croak==60 then
    sfx(5,3)
   elseif self.croak==90 then
    sfx(-2,3)
   elseif self.croak==110 then
    sfx(i_am_inside and 1 or 0, 0)
   end
  end

 elseif self.t=="pink frog" then
  if self.ticks > 0 then
   self.ticks -= 1
   if self.ticks==0 then
    self.a="idle"
    if self.follow and flr(self.x/8+0.5)==83 then
     self.follow=false
     self.ready=true
    end
   end
  end
  if self.a=="idle" and self.follow and abs(self.x-frog.x) > 18 then
   self.a="hop"
   self.ticks=16
   self.my = 0
   if fget(mget(self.x/8+1,self.y/8),0) then
    self.my = -0.5
   end
  elseif self.a=="idle" and lights and not surprise and t%60==0 and frog.a!="ribbit" then
   self.a="jump"
   self.my=-1
   self.y+=1
   self.ticks=15
  end
  if self.a=="jump" then
   if self.ticks < 8 and self.my < 0 then
    self.my = -self.my
   end
   self.y += self.my
  elseif self.a=="hop" then
   self.x += 0.5
   self.y += self.my
  end

 elseif self.t=="ball" then
  if self.mv > 0 then
   if self.mx < 0 then
    self.f += 0.5
    self.f %= 6
   else
    self.f -= 0.5
    if self.f < 0 then self.f += 6 end
   end
   if flr(self.x)==self.x then self.mv -= 1 end
   if self.mv==0 then self.mx=0 end
  end
  if self.x < pinkfrog.x+7 then
   self.mv = 2
   self.mx = 0.5
  elseif frog.ball != self and self.x < frog.x+8 and self.x+7 > frog.x+1 and self.y + 8 > frog.y then
   if frog.y>=self.y and (frog.flip and fget(mget((self.x+5)/8,self.y/8),1) or not frog.flip and (fget(mget((flr(self.x+0.5)+2)/8,self.y/8),1)) or abs(pinkfrog.x-flr(self.x+0.5)) < 8) then
    self.mx = 0
    self.mv = 0
    sfx(7)
    frog.a = "thump"
    frog.ticks = frog.flip and 8 or 12
   else
    self.mv = 2
    self.mx = frog.y > self.y and (frog.flip and 0.5 or -0.5) or frog.dismount and (frog.flip and -0.5 or 0.5) or frog.x+3 <= self.x+4 and 0.5 or -0.5
   end
  end
  if self.mv != 0 and fget(mget(self.x/8+0.5,(self.y+7.5)/8),0) then
   self.y -= 0.5
  end
  local tf=mget((self.x+self.mx+(self.mx < 0 and 3 or 4.5))/8,self.y/8)
  if fget(tf,1) or (abs(pinkfrog.x-flr(self.x+0.5)) < 8 and self.mx < 0) then
   self.mv=0
   self.mx=0
  end
  self.x += self.mx
  tf=mget((self.x+(self.mx < 0 and 5 or 2))/8,self.y/8+1)
  if not fget(tf,0) and not fget(tf,2) then
   self.y += 1
  end

 elseif self.t=="party frog" and surprise then
  spawn_ent(self.x/8,self.y/8-0.5,"confetti",{
   mx=rnd(4)-2,
   my=-1-rnd(3),
   c=6+flr(rnd(10))
  })

 elseif self.t=="confetti" then
  self.mx *= 0.9
  self.my *= 0.9
  self.my += 0.1
  self.x += self.mx
  self.y += self.my
  if fget(mget(self.x/8,self.y/8),0) then
   remove_ent(self)
  end

 elseif self.t=="balloon" then
  if t%10==0 then
   self.a = 0.2+rnd(0.1)
  end
  if self.a < 0.25-0.05 then
   self.a = 0.2
  elseif self.a > 0.25+0.05 then
   self.a = 0.3
  end
  local p=2
  self.x += cos(self.a)*p
  self.y += sin(self.a)*p
  local m=(function(x,y)
   return sqrt(x*x + y*y)
  end)(self.x - self.ax, self.y - self.ay)
  if m > self.l then
   self.x = self.ax + (self.x - self.ax)/m*self.l
   self.y = self.ay + (self.y - self.ay)/m*self.l
  end

 elseif self.t=="text" then
  if not self.p or self.y > 40 then
   self.y -= 0.1
  end
  if self.y < 32 then
   remove_ent(self)
  elseif self.p and self.y<=40 then
   if not fadeout then fadeout = 0 end
   fadeout += 1
  end

 end
end

function spawn_cloud(x)
 add(bgents,{
  x=x or 140,
  y=(#bgents*19)%12,
  t="cloud",
  d=5+flr(rnd(4)),
  s=rnd()<0.5 and 0.4 or 0.6
 })
end

function _update()
 t=t+1

 if suspense then
  suspense -= 1
  if suspense==59 then
   make_party()
  elseif suspense==0 and not lights then
   sfx(1,0)
   sfx(4,3)
   suspense=10
   lights=true
  elseif suspense==0 then
   suspense=nil
   sfx(12,1)
   surprise=30
  end
 elseif surprise then
 	surprise -= 1
 	if surprise == 0 then
 	 surprise=nil
 	 music(0,0,2+4)
 	 sfx(i_am_inside and 1 or 0, 0)
  end
 elseif ending and ending > -1 then
  ending += 1
  if ending%60 == 0 then
   local etext={
    "young one.",
    "",
    "you must always remember,",
    "that even when it seems",
    "the entire world is dark,",
    "and the rain will never end",
    "...",
    "you are never alone.",
    "",
    "all of us are right here",
    "with you. waiting for you.",
    "cheering for you.",
    "",
    "...",
    "",
    "we love you.",
    "",
    "do you understand?"
   }
   local l=flr(ending/60)
   if l <= #etext then
    spawn_text(etext[l],l==#etext)
   end
  end
 end

 foreach(bgents,update_ent)
 foreach(ents,update_ent)

 -- spawn clouds
 if not lights and t%5==0 then
  spawn_cloud()
 end

 -- spawn whitecaps
 if not lights or t%3==0 then
  add(bgents,{
   x=flr(rnd(128)),
   y=flr(rnd(4))*8,
   t="whitecap",
   f=0,
   s=2+flr(rnd(3))
  })
 end

 -- spawn rain
 if not lights then
  for i=1,8 do
   add(bgents,{
    x=2+flr(rnd(256)),
    y=0,
    t="rain",
    l=2+flr(rnd(3))*2,
    s=3+rnd(4),
    c=#bgents%2
   })
  end
 end

 if cam_x < cam_dx then
  cam_x += 0.5
 elseif cam_x > cam_dx then
  cam_x -= 0.5
 end
end

local function draw_ent(self)
 if self.t=="fan" then
  local f=t%6
  if lights then
   pal(1,6)
   pal(13,f==0 and 7 or 2)
   pal(6,f==2 and 7 or 2)
   pal(15,f==4 and 7 or 2)
  else
   pal(13,f==0 and 5 or 0)
   pal(6,f==2 and 5 or 0)
   pal(15,f==4 and 5 or 0)
  end
  spr(45,self.x,self.y)
  pal()

 elseif self.t=="frog" then
  if lights or mget(self.x/8+0.5,self.y/8) == 23 then
   pal(3,11)
  end
  if self.a=="croak" then
   local ox=-1
   if self.flip then ox=-ox end
   if self.croak > 90 then
    spr(20,self.x+ox,self.y-6,1,2,not self.flip,true)
   end
  end
  spr(self.a=="ribbit" and self.ticks<=20 and t%2==1 and 19 or (self.a=="hop" or self.a=="jump") and 16+flr((18-self.ticks)/6) or self.a=="thump" and 18 or self.a=="unlocking" and (self.unlocking < 30 and 17 or 18) or self.a=="croak" and self.croak > 90 and 21 or 16,self.x,self.y,1,1,self.flip)
  if not self.unlocked and self.a=="thump" and flr(self.x/8)==92 then
   spr(22,92*8,self.y-8)
  end
  if self.a=="croak" and self.croak <= 90 then
   if self.croak > 60 then
    local ox=-1
    if self.flip then ox=-ox end
    if flr(self.croak/2)%2==0 then
     local f=flr(self.croak/2)%4 == 0
     spr(37,self.x+ox-4,self.y-4 + sin((self.croak-60)/60)*24,2,1,f,f)
    else
     local f=flr(self.croak/2)%4 == 3
     spr(20,self.x+ox,self.y-8 + sin((self.croak-60)/60)*24,1,2,false,f,f)
    end
   elseif self.croak > 32 then
    local ox=-2
    if self.flip then ox=-ox end
    spr(20,self.x+ox,self.y-8,1,2,not self.flip)
   end
  end
  pal()

 elseif self.t=="pink frog" then
  if lights or mget(self.x/8+0.5,self.y/8) == 23 then
   pal(3,14)
  else
   pal(3,2)
  end
  spr(self.a=="ribbit" and self.ticks<=20 and t%2==1 and 19 or (self.a=="hop" or self.a=="jump") and 16+flr((18-self.ticks)/6) or 16,self.x,self.y,1,1,self.flip)
  pal()

 elseif self.t=="party frog" then
  pal(3,self.c)
  pal(7,self.hat)
  local f=self.x+4 < frog.x+4
  spr(surprise and t%2==1 and 19 or 16,self.x,self.y,1,1,f)
  if self.hat then spr(82,self.x,self.y,1,1,f) end
  pal()

 elseif self.t=="ball" then
  if lights or mget(self.x/8+0.5,self.y/8) == 23 then
   pal(1,0)
   pal(12,13)
   pal(5,6)
  elseif fget(mget(self.x/8+0.5,self.y/8),7) then
   pal(1,0)
   pal(12,1)
  else
   pal(12,0)
  end
  local f=flr(self.f)
  -- frame list:
  -- 0 waning crescent
  -- 1 waning sliver
  -- 2 new moon/full moon
  -- 3 waxing sliver
  -- 4 waxing crescent
  -- 5 halfmoon
  local hflip=f == 3 or f == 4
  spr(f == 2 and 35 or (f == 1 or f == 3) and 33 or f == 5 and 34 or 32,self.x - (hflip and 1 or 0),self.y,1,1,hflip)
  pal()

 elseif self.t=="confetti" then
  pset(self.x,self.y,self.c)

 elseif self.t=="balloon" then
  line(self.x+2,self.y+6,self.ax,self.ay,7)
  pal(7,self.c)
  spr(83,self.x,self.y)
  pal()

 elseif self.t=="crash" then
  spr((lights and 112 or 48)+flr(t/8)%3,self.x,self.y)

 elseif self.t=="text" then
  camera()
  print(self.text,self.x,self.y,fadeout and 9 or (self.y > 78 or self.y < 34) and 13 or (self.y > 76 or self.y < 36) and 6 or 7)
  camera(cam_x*8,0)

 end

 --if self.t=="frog" then print(self.x/8,self.x,self.y-5,7) end
 --print(self.y/8,self.x,self.y-5,7)
end

local fadepal={}
for step=0,2 do
 for i=0,15 do
  fadepal[i*3+step]=sget(120+i%8,121+4*flr(i/8)+step)
 end
end

function _draw()
 cls()
 if suspense and not lights then
  return
 elseif fadeout and fadeout >= 10*30 then
  pal()
  print("( the end )",64-#"( the end )"*2,40,7)
  print("jte 2015",64-#"jte 2015"*2,56,5)
  print("jte@kidradd.org",64-#"jte@kidradd.org"*2,64,5)
  return
 end

 if lights then
  rectfill(0,0,127,127,12)
  local f=flr(t/10)%3
  if f==0 then
   pal(7,10)
   palt(6,true)
   palt(15,true)
  elseif f==1 then
   pal(15,10)
   palt(6,true)
   palt(7,true)
  elseif f==2 then
   pal(6,10)
   palt(7,true)
   palt(15,true)
  end
  if ending then
   pal(9,10)
   pal(5,10)
  end
  spr(80,12*8,3*8,2,2)
  pal()
 end

 ocean_y=96+flr(sin(t/300)*4+0.5)
 rectfill(0,ocean_y,127,127,1)

 -- draw clouds
 local clouds={}
 foreach(bgents,function(self)
  if self.t=="cloud" then
   if self.x > 128+self.d+1 then
    return
   end
   for i=1,#clouds do
    if clouds[i].y <= self.y then
     insert(clouds,i,self)
     return
    end
   end
   add(clouds,self)
  end
 end)
 foreach(clouds,function(self)
  circfill(self.x,self.y,self.d,lights and 7 or 5)
  circ(self.x,self.y,self.d+1,0)
 end)

 -- draw rain and whitecaps.
 foreach(bgents,function(self)
  if self.t=="rain" and not lights then
   if t%2==self.c then
    line(self.x,self.y,self.x+self.l/2,self.y-self.l, mget(self.x/8+0.5+cam_x,self.y/8+0.5) == 23 and 13 or 1)
   end

  elseif self.t=="whitecap" then
   spr(self.f + (lights and 64 or 0),self.x,self.y+ocean_y)

  end
 end)

 camera(cam_x*8,0)

 -- draw map
 pal(12,0)
 map(0,0,0,0,128,16)
 pal()

 -- draw fg ents
 foreach(ents,draw_ent)

 camera()
 --print("ending: "..(ending or 0),0,0,7)

	if not playing then
		-- draw title stuff
		sspr(32,40,24,16,40,26,48,32)
		print("press z to frog",34,68,5)
	end

 if fadeout then
  step = min(flr(fadeout/15),2)
  for i=0,15 do
   pal(i,fadepal[i*3+step],1)
  end
 end
end

-- init

-- spawn clouds
for x=0,140,3 do
 spawn_cloud(x)
end

-- skip 40 ticks (spawn rain)
for i=1,40 do _update() end

-- spawn all map objects
for y=0,15 do
 for x=0,127 do
  local t=mget(x,y)
  if t==16 then
   mset(x,y,8)
   spawn_ent(x,y,"frog")
  elseif t==17 then
   mset(x,y,23)
   spawn_ent(x,y,"pink frog")
  elseif t==32 then
   mset(x,y,8)
   spawn_ent(x,y,"ball")
  elseif t==45 then
   mset(x,y,8)
   spawn_ent(x,y,"fan")
  elseif t==83 then
   mset(x,y,8)
   spawn_ent(x,y,"balloon",{c=8+flr(rnd(8))})
  elseif t==51 then
   spawn_ent(x,y+2/8,"crash")
  end
 end
end
