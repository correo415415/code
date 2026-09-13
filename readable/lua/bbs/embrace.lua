--embrace
--by trasevol_dog

things={
--name   smile  bga
-- | radius|color| bgb
--{"a",32, 3, 8, 2, 7}

 {"fun",            32,  5, 10, 12,  7},
 {"love",           28,  4, 14,  8,  2},
 {"friendships",    40,  4, 12, 11,  3},
 
 {"feelings",       44,  2,  8,  6,  7},
 {"thoughts",       28,  3, 13,  1,  0},
 {"knowledge",      32,  3,  6, 13,  7},
 
 {"opinions",       28,  1,  9,  8, 10},
 {"your identity",  38,  2, 11,  3,  7},
 {"dreams",         34,  4, 12, 14,  7},
 
 {"mistakes",       32,  1,  2, 13,  1},
 {"failures",       38,  0,  1,  8,  0},
 {"learning",       40,  2, 11,  0,  3},
 {"success",        34,  4, 10,  6,  7},
 
 {"adversity",      24,  3,  8,  2,  0},
 {"help",           30,  4, 11,  7,  6},
 {"helping others", 42,  5, 11, 11,  3},
 
 {"the future",     32,  3, 13, 13,  1},
 {"the present",    40,  2, 12,  6,  7},
 
 {"embracing",      28,  4, 14,  6,  7},
 {"life",           38,  4, -9,  6,  7}
}

ending={
 {t=1,   y=16 , str="thank you for playing,"},
 {t=0.08, y=32 , str="keep on embracing."},
 {t=0.12, y=64 , str="- trasevol_dog", right=true},
 {t=0.08, y=74, str="patreon.com/trasevol_dog", right=true, darker=1},
 {t=0.12, y=108, str="embrace exists thanks to:", left=true, darker=1},
 {t=0.08, y=118, str="joseph white, spaceling, ryan malm, rotatetranslate, anne le clech, austin east, dan lewis, sasha bilton, reza esmaili, slono, tim and alexandra swast, dave hoffman, bitzawolf, chris mccluskey, hervan, thomas wright, flo devaux, giles graham, cole smith, berkfrei, jearl, paul nguyen, joel jorgensen, marcin majewski, marty kovach, jefff, dan rees-jones, meru, hjs, zachary cook, christian ostman, andreas bretteville, finn ellis, giovan, pat labine, andrew reitano, amy, collin caldwell, sam loeschen, jakub wasilewski, qristy overton, brent werness, vaporstack, max cahill, pierre b, jeremy bouin, sean s leblanc, jesse bergerstock, andrew reist, jacel the thing, hushcoil ----- joseph white, spaceling, ryan malm, rotatetranslate, anne le clech, austin east, dan lewis, sasha bilton, reza esmaili, slono, tim and alexandra swast, dave hoffman, bitzawolf, chris mccluskey, hervan, thomas wright, flo devaux, giles graham, cole smith, berkfrei, jearl, paul nguyen, joel jorgensen, marcin majewski, marty kovach, jefff, dan rees-jones, meru, hjs, zachary cook, christian ostman, andreas bretteville, finn ellis, giovan, pat labine, andrew reitano, amy, collin caldwell, sam loeschen, jakub wasilewski, qristy overton, brent werness, vaporstack, max cahill, pierre b, jeremy bouin, sean s leblanc, jesse bergerstock, andrew reist, jacel the thing, hushcoil ----- joseph white, spaceling, ryan malm, rotatetranslate, anne le clech, austin east, dan lewis, sasha bilton, reza esmaili, slono, tim and alexandra swast, dave hoffman, bitzawolf, chris mccluskey, hervan, thomas wright, flo devaux, giles graham, cole smith, berkfrei, jearl, paul nguyen, joel jorgensen, marcin majewski, marty kovach, jefff, dan rees-jones, meru, hjs, zachary cook, christian ostman, andreas bretteville, finn ellis, giovan, pat labine, andrew reitano, amy, collin caldwell, sam loeschen, jakub wasilewski, qristy overton, brent werness, vaporstack, max cahill, pierre b, jeremy bouin, sean s leblanc, jesse bergerstock, andrew reist, jacel the thing, hushcoil ----- and you!                           ", left=true}
}

function _init()
 sfx(0)
 music(0)

 pitch=0
 
 t=0
 
 xmod,ymod=0,0
 
 drk={[0]=0,0,1,1,2,1,13,6,2,4,9,3,1,1,2,4}
 lit={[0]=1,13,14,11,9,6,7,7,14,10,7,7,7,7,15,7}
 
 stars = {}
 smoke = {}

 bga,bgb = 7,6

 shadx=7
 shady=7
 
 ghost = create_ghost("", 32, 7, 7)
 ghost.huglx = 16
 ghost.hugly = -64
 ghost.hugrx = 112
 ghost.hugry = -64
 
-- bga = drk[ghost.c]
-- bgb = lit[ghost.c]

 armr=create_limb(96,136,0.25, 24, 4, 7,7,7)
 arml=create_limb(32,136,0.25, 24, 4, 7,7,7)
 arml.vx=0
 arml.vy=0
 armr.vx=0
 armr.vy=0
-- 
 huglt=0
 hugrt=0
-- 
 happyt=-0.5
 
 left = true

 step=0--#things-1
 
 titlet=0
 titley=-32
 titlevy=0
 
 local cs={{},{},{}}
 for i=0,15 do
  local ca=flr(i/2)+8
  local cb=flr(i/2+0.5)%8+8
  cs[1][i]=ca+shl(cb,4)
  cs[2][i]=drk[ca]+shl(drk[cb],4)
  cs[3][i]=lit[ca]+shl(lit[cb],4)
 end
 
 titledata={}
 for i=0,6 do
  let={}
  for y=0,15 do
   lin={}
   for x=0,15 do
    lin[x]=cs[sget(i*16+x,32+y)]
   end
   let[y]=lin
  end
  titledata[i]=let
 end
 
 endt=0
 
 no_move=true

-- next_step()
end

function _update()
 t+=0.01
 
 if step==0 then
  if titlet<0.1 then
   titlet += 0.01
  else
   if titlet<10 then
    titlet+=0.01
   end
   titlevy -= (titley-56)*0.02
   titley += titlevy
   titlevy *= 0.95
   
   ghost.huglx = 16
   ghost.hugly = titley+16
   ghost.hugrx = 112
   ghost.hugry = titley+16
  end
 elseif step==#things+1 then
  foreach(smoke, update_smoke)
  if endt<90 then
   endt+=0.01
  end
  foreach(stars,update_star)
  if chance(3) then
   local k=flr(3+rnd(6))
   local a=rnd(1)
   local x,y=rnd(128),rnd(128)
   for i=1,k do
    create_star(x,y,a+i/k,1+rnd(2))
   end
  end
  return
 end
 
 if not in_transition then
  if ghost.happy then
   happyt += 0.01
   if happyt > 0.33 then
    next_step()
   end
  end
  
  if btnp(5,1) then
   --transition()
   --transition(true)
   next_step()
  end
 end
 
 if ghost.huglb then
  huglt=min(huglt+0.1,12)
 else
  huglt=0
 end
 
 if ghost.hugrb then
  hugrt=min(hugrt+0.1,12)
 else
  hugrt=0
 end
 
 if not ghost.happy then
  if left then
   local d=dist(arml.hed.x, arml.hed.y, ghost.huglx, ghost.hugly)
   if d<4 and not no_move then
    ghost.huglb=true
    ghost.mouth=min(ghost.mouth+(ghost.hugrb and 2 or 1),6)
    local a=rnd(1)
    for i=1,8 do
     create_star(ghost.huglx, ghost.hugly, i/8, 3+rnd(2))
    end
    if ghost.hugrb then
     sfx(2)
    else
     sfx(1)
    end
    move_pitch(ghost.mouth-3)
    no_move = true
   end
  else
   local d=dist(armr.hed.x, armr.hed.y, ghost.hugrx, ghost.hugry)
   if d<4 and not no_move then
    ghost.hugrb=true
    ghost.mouth=min(ghost.mouth+(ghost.huglb and 2 or 1),6)
    local a=rnd(1)
    for i=1,8 do
     create_star(ghost.hugrx, ghost.hugry, i/8, 3+rnd(2))
    end
    if ghost.huglb then
     sfx(2)
    else
     sfx(1)
    end
    move_pitch(ghost.mouth-3)
    no_move = true
   end
  end
  
  if ghost.huglb and ghost.hugrb then
   ghost.happy = true
   if ghost.mouth == 3 then
    ghost.mouth = 4
   end
  end
 end
 
 if btnp(4) then
  left = not left
 end
 
 if ghost.huglb then left = false end
 if ghost.hugrb then left = true end
 
 local arm = left and arml or armr
 
 local acc=1.0
 if btn(0) then arm.vx-=acc no_move=false end
 if btn(1) then arm.vx+=acc no_move=false end
 if btn(2) then arm.vy-=acc no_move=false end
 if btn(3) then arm.vy+=acc no_move=false end
 
 if arml.hed.x<0   then arml.vx+=2 end
 if arml.hed.x>127 then arml.vx-=2 end
 if arml.hed.y<0   then arml.vy+=2 end
 if arml.hed.y>127 then arml.vy-=2 end
 
 if armr.hed.x<0   then armr.vx+=2 end
 if armr.hed.x>127 then armr.vx-=2 end
 if armr.hed.y<0   then armr.vy+=2 end
 if armr.hed.y>127 then armr.vy-=2 end
 
 arml.hed.x+=arml.vx
 arml.hed.y+=arml.vy
 armr.hed.x+=armr.vx
 armr.hed.y+=armr.vy
 
 arm.vx*=0.8
 arm.vy*=0.8
 arm.hed.acx=0
 arm.hed.acy=0
 
 if ghost.huglb then
  local k=flr(huglt)
  local a=atan2(ghost.huglx-64,ghost.hugly-64)
  local co=cos(a)
  local si=sin(a)
  for i=-1,k do
   s=arml.pts[#arml.pts-k+i]
   s.x = ghost.huglx-i*2*co
   s.y = ghost.hugly-i*2*si
  end
 end
 
 if ghost.hugrb then
  local k=flr(hugrt)
  local a=atan2(ghost.hugrx-64,ghost.hugry-32)
  local co=cos(a)
  local si=sin(a)
  for i=-1,k do
   s=armr.pts[#armr.pts-k+i]
   s.x = ghost.hugrx-i*2*co
   s.y = ghost.hugry-i*2*si
  end
 end
 
 update_limb(arml)
 update_limb(armr)
 
 update_ghost(ghost)
 
 foreach(stars, update_star)
end

function _draw()
 xmod,ymod=0,0

 if step==#things+1 then
  cls()
  draw_end()
  foreach(stars, draw_star)
  foreach(smoke,draw_smoke)
  --rectfill(0,0,32,8,0)
  --print(endt, 0, 0, 7)
  --print(stat(1),0,0,7)
  return
 end
 
 if step==#things then
  local xxx=-(t*100%32)
  local s=196

  pal(1,bga)
  pal(3,7)
  pal(2,bgb)
  for x=xxx,127,32 do
   for y=0,127,32 do
    spr(s,x,y,4,4)
   end
  end
  pal(1,1) pal(2,2) pal(3,3)
 else
  local s=192
  pal(1,bga)
  pal(2,bgb)
  for x=-(t*100%32),127,32 do
   for y=0,127,32 do
    spr(s,x,y,4,4)
   end
  end
  pal(1,1) pal(2,2)
 end
 
 local x
 local y
 if step>0 then
  draw_title(13)

  x = 64+8*cos(t)
  y = 48+ghost.r/2+4*sin(t*2)
  draw_ghost_shadow(ghost, x, y)
 else
  draw_text("trasevol_dog presents", 64, 8, 0,7,6)
  draw_title_shadow(titley)
 end

 draw_limb_shadow(arml)
 draw_limb_shadow(armr)
 
 if ghost.huglb then
  local k=flr(huglt)
  draw_limb_part(arml, #arml.pts-k-1, #arml.pts)
 end

 if ghost.hugrb then
  local k=flr(hugrt)
  draw_limb_part(armr, #armr.pts-k-1, #armr.pts)
 end

 if step==0 then
  draw_title_rainbow(titley)
 else
  draw_ghost(ghost, x, y)
 end
 
 camera()
 
 if ghost.huglb then
  local k=flr(huglt)
  draw_limb_part(arml, 1, #arml.pts-k)
 else
  draw_limb(arml)
 end
 
 if ghost.hugrb then
  local k=flr(hugrt)
  draw_limb_part(armr, 1, #armr.pts-k)
 else
  draw_limb(armr)
 end
 
 if step==0 then
  if not ghost.happy then
   if left then
    draw_circlething(ghost.huglx, ghost.hugly, 10+2*cos(t*2), t*0.5)
   else
    draw_circlething(ghost.hugrx, ghost.hugry, 10+2*cos(t*2), -t*0.5)
   end
  end
 end
 
 if not ghost.happy then
  if left then
   draw_circlething(arml.hed.x, arml.hed.y, 12+2*cos(t*2), t*0.5+1/24)
  else
   draw_circlething(armr.hed.x, armr.hed.y, 12+2*cos(t*2), -t*0.5+1/24)
  end
 end
 
 if step==0 and not ghost.happy then
  local x,y
  if left then
   x,y=arml.hed.x,arml.hed.y
  else
   x,y=armr.hed.x,armr.hed.y
  end
  
  pal(1,0)
  local dirs={{-1,0},{1,0},{0,-1},{0,1}}
  local r=14+2.5*cos(t*3)
  for i=0,3 do
   local s=32+i
   local d=dirs[i+1]
   if btn(i) then s+=4 end
   spr(s, x+r*d[1]-3.5, y+r*d[2]-3.5)
  end
  pal(1,1)
 end
 
 if step==0 then
  local tt=titlet-0.5
  if tt>0 then
   local str="move the hand with ⬅️ ⬆️ ➡️ ⬇️ "
   local n=min(tt*50,#str)
   local str=sub(str,0,n)
   draw_text(str,64,96,0,7,6)
   tt-=#str/50
  end
  if tt>0 then
   local str="put it on the side of 'embrace'"
   local n=min(tt*50,#str)
   local str=sub(str,0,n)
   draw_text(str,64,108,0,7,6)
   tt-=#str/50
  end
 end

 foreach(stars, draw_star)
 
 if btn(4,1) then
  rectfill(0,0,32,8,0)
  print(stat(1),0,0,7)
 end
end

hap=false
function next_step()
 if step>#things or hap then
  return
 end
 if step==#things then
  for x=1,127,4 do
   for y=1,127,4 do
    create_smoke(x,y,pget(x,y))
   end
  end
  step+=1
  hap=true
  return
 end
 
 sfx(3)

 transition()
 
 step+=1

 local skins = {
  {7, 7, 15},
  {15, 7, 14},
  {14, 7, 2},
  {9, 15, 4},
  {4, 9, 2},
  {2, 4, 1},
  {1, 13, 0}
 }
 
 local skin = pick(skins)
 armr=create_limb(96,136,0.25, 24, 4, skin[1], skin[2], skin[3])
 arml=create_limb(32,136,0.25, 24, 4, skin[1], skin[2], skin[3])
 arml.vx=0
 arml.vy=0
 armr.vx=0
 armr.vy=0
 
 local thing = things[step]
 
 ghost = create_ghost(thing[1], thing[2], thing[3], thing[4])
 
 bga = thing[5]
 bgb = thing[6]
 
 huglt=0
 hugrt=0
 
 happyt=0
 
 left = true
 
 no_move= true
 
 move_pitch(thing[3]-3)
 
 transition(true)
end


function create_limb(x, y, a, n, r, c0, c1, c2)
 local pts={}
 local limb={
  x=x, y=y, a=a,
  pts=pts,
  r=r,
  c0=c0,
  c1=c1,
  c2=c2
 }
 
 add(pts,{x=x, y=y, vx=0, vy=0, acx=0, acy=0, a=a, co=cos(a), si=sin(a)})
 
 for i=2,n do
  prev=pts[i-1]
  add(pts,{
   x=prev.x+4*prev.co+rnd(4)-2,
   y=prev.y+4*prev.si+rnd(4)-2,
   vx=0, vy=0,
   acx=0, acy=0,
   a=a, co=prev.co, si=prev.si
  })
 end
 
 limb.hed=pts[#pts]
 
 return limb
end

function update_limb(s)
 local pts=s.pts
 for k=1,#pts-1 do
  local v=pts[k]
-- for k,v in pairs(test) do
  local a, co, si
  
  local vb = pts[k+1]
--  if vb then
   local d=smolsqrdist(v.x-vb.x, v.y-vb.y)
   a=atan2(v.x-vb.x, v.y-vb.y)
   co=cos(a)
   si=sin(a)
   
   vb.a = a
   vb.co = co
   vb.si = si
   
   v.a=(v.a+a)/2
   v.co=(v.co+co)/2
   v.si=(v.si+si)/2
   
   if d>smolsqr(3) then
    v.vx -=1*co
    v.vy -=1*si
    vb.vx+=1*co
    vb.vy+=1*si
   elseif d<smolsqr(1) then
    v.vx +=1*co
    v.vy +=1*si
    vb.vx-=1*co
    vb.vy-=1*si
   else
    local px,py=v.x+5*v.co,v.y+5*v.si
    local d=sqrdist(vb.x-px,vb.y-py)
    if d>sqr(2) then
     vb.vx-=(px-vb.x)/8
     vb.vy-=(py-vb.y)/8
    end
   end
--  end
  
  v.acx=mid(v.acx+rnd(0.1)-0.05,-0.1,0.1)
  v.acy=mid(v.acy+rnd(0.1)-0.05,-0.1,0.1)
  v.vx+=v.acx
  v.vy+=v.acy
  
  v.x+=v.vx
  v.y+=v.vy
  v.vx*=0.5
  v.vy*=0.5
 end
 
 local v=pts[#pts]
 
 v.acx=mid(v.acx+rnd(0.2)-0.1,-0.25,0.25)
 v.acy=mid(v.acy+rnd(0.2)-0.1,-0.25,0.25)
 v.vx+=v.acx
 v.vy+=v.acy
 
 v.x+=v.vx
 v.y+=v.vy
 v.vx*=0.8
 v.vy*=0.8
 
 pts[1].x = s.x
 pts[1].y = s.y
-- pts[1].a = s.a+0.5
-- pts[1].co = cos(s.a+0.5)
-- pts[1].si = sin(s.a+0.5)
end

function draw_limb(s)
 local c0,c1,c2=s.c0,s.c1,s.c2
 local r=s.r
 local pts=s.pts
 
 local hx = s.hed.x
 local hy = s.hed.y
 local hr = 1.5*r
-- local thx = hx+sgn(s.x-64)*(r*1.5+1)*s.hed.si
-- local thy = hy-sgn(s.x-64)*(r*1.5+1)*s.hed.co
-- local thr = 0.5*r

 circfill(hx, hy, hr+2, 0)
-- circfill(thx, thy, thr+2,0)
 circ(hx-1, hy, hr, c1)
 circ(hx, hy-1, hr, c1)
 circ(hx+1, hy, hr, c2)
 circ(hx, hy+1, hr, c2)

-- circ(thx-1, thy, thr, c1)
-- circ(thx, thy-1, thr, c1)
-- circ(thx+1, thy, thr, c2)
-- circ(thx, thy+1, thr, c2)

 local xa,ya,xb,yb
 for k=1,#pts do
  local v=pts[k]
  
  local co=v.si
  local si=-v.co
  
  local xc=v.x+r*co
  local yc=v.y+r*si
  local xd=v.x-r*co
  local yd=v.y-r*si
  
  if xa then
   color(c0)
   trifill(xa,ya,xb,yb,xc,yc)
   trifill(xb,yb,xc,yc,xd,yd)
   --color(c1)
   line(xa,ya,xc,yc,c2)
   line(xb,yb,xd,yd,c1)
   color(0)
   line(xa+co,ya+si,xc+co,yc+si)
   line(xb-co,yb-si,xd-co,yd-si)
  end
  
  xa,ya,xb,yb = xc,yc,xd,yd
 end
 
 circfill(hx, hy, hr, c0)
-- circfill(thx,thy,thr,c0)
end

function draw_limb_part(s, ia, ib)
 local c0,c1,c2=s.c0,s.c1,s.c2
 local r=s.r
 local pts=s.pts
 
 local hx = s.hed.x
 local hy = s.hed.y
 local hr = r*1.5

 if ib>=#pts then
  circfill(hx, hy, hr+2, 0)
  circ(hx-1, hy, hr, c1)
  circ(hx, hy-1, hr, c1)
  circ(hx+1, hy, hr, c2)
  circ(hx, hy+1, hr, c2)
 end
 
 local xa,ya,xb,yb
 
 if ia>1 then
  local v=pts[ia-1]
  
  local co=v.si
  local si=-v.co
  
  local xa=v.x+r*co
  local ya=v.y+r*si
  local xb=v.x-r*co
  local yb=v.y-r*si
 end
 
 for k=max(ia,1),min(ib,#pts) do
  local v=pts[k]
  
  local co=v.si
  local si=-v.co
  
  local xc=v.x+r*co
  local yc=v.y+r*si
  local xd=v.x-r*co
  local yd=v.y-r*si
  
  if xa then
   color(c0)
   trifill(xa,ya,xb,yb,xc,yc)
   trifill(xb,yb,xc,yc,xd,yd)
   --color(c1)
   line(xa,ya,xc,yc,c2)
   line(xb,yb,xd,yd,c1)
   color(0)
   line(xa+co,ya+si,xc+co,yc+si)
   line(xb-co,yb-si,xd-co,yd-si)
  end
  
  xa,ya,xb,yb = xc,yc,xd,yd
 end
 
 if ib>=#s.pts then
  circfill(hx, hy, hr, c0)
 end
end

function draw_limb_shadow(s)
 xmod-=shadx
 ymod-=shady
 camera()

 local r=s.r
 local pts=s.pts

 local hx=s.hed.x
 local hy=s.hed.y

 color(0)

 circfill(hx,hy,r*1.5+2)
 
 local xa,ya,xb,yb
 for k=1,#pts do
  local v=pts[k]

  local co=v.si
  local si=-v.co

  local xc=v.x+r*co
  local yc=v.y+r*si
  local xd=v.x-r*co
  local yd=v.y-r*si

  if xa then
   trifill(xa,ya,xb,yb,xc,yc)
   trifill(xb,yb,xc,yc,xd,yd)
  end

  xa,ya,xb,yb=xc,yc,xd,yd
 end

 xmod+=shadx
 ymod+=shady
 camera()
end


function create_ghost(str, r, mouth, c)
 local s = {
  str = str,
  r = r,
  c = c,
  cd = cd,
  cl = cl,
  mouth = mouth,
  mouthy = 0.25+rnd(0.25),
  mouthx = -0.1+rnd(0.2),
  nose = 16+rnd(16),
  nosex = -0.05+rnd(0.1),
  nosey = 0.05+rnd(0.15),
  blink = 0.2+rnd(0.8),
  eyea = {y=-0.15-rnd(0.1), r = (0.2+rnd(0.05))*r},
  eyeb = {y=-0.15-rnd(0.1), r = (0.2+rnd(0.05))*r},
  hugl = 0.4+rnd(0.25),
  hugr = -0.1+rnd(0.25),
  limbs = {}
 }
 
 s.huglx = r*cos(s.hugl)
 s.hugly = r*sin(s.hugl)
 s.hugrx = r*cos(s.hugr)
 s.hugry = r*sin(s.hugr)
 
 local al=0.45+rnd(0.1)
 if al>s.hugl-0.05 then
  al+=0.1
 end
 add(s.limbs,
      create_limb(cos(al),
                  sin(al),
                  al,
                  8+rnd(4), 2+rnd(2),
                  c,
                  c,
                  c))
 
 local ar=-0.15+rnd(0.1)
 if ar>s.hugr-0.05 then
  ar+=0.1
 end
 add(s.limbs,
      create_limb(cos(ar),
                  sin(ar),
                  ar,
                  8+rnd(4), 2+rnd(2),
                  c,
                  c,
                  c))
 
 return s
end

function update_ghost(s)
 for l in all(s.limbs) do
  update_limb(l)
 end
 
 s.blink -= 0.01
 if s.blink<0 then
  s.blink = 0.1+rnd(0.9)
 end
end

function draw_ghost(s, x, y)
 local r = s.r+4*cos(t)
 local ka = 4
 local kb = 2.5

 draw_ghostshape(x,y,r,s.c,s.cd,s.cl, ka, kb)
 
 local str = s.str
 local sx = x - #str*2+2
 local sy = y - 0.75*r
 local sc = ghost.c==0 and 7 or 0
 
 for i=1,#str do
  local s,x,y = sub(str,i,i), sx, sy+2.5*cos(i/8+t*3)-cos(i/5-t*1.7+0.17)
  print(s,x-1,y-1,ghost.c)
  print(s,x  ,y-1,ghost.c)
  print(s,x+1,y-1,ghost.c)
  print(s,x-1,y  ,ghost.c)
  print(s,x+1,y  ,ghost.c)
  print(s,x-1,y+1,ghost.c)
  print(s,x  ,y+1,ghost.c)
  print(s,x+1,y+1,ghost.c)
  print(s,x,y,sc)
  sx+=4
 end
 
 local ya=y+r*s.eyea.y
 local yb=y+r*s.eyeb.y
 local xa=x-0.33*r
 local xb=x+0.33*r
 local ra=s.eyea.r
 local rb=s.eyeb.r
 
 if s.happy then
  ya += 0.5*ra
  yb += 0.5*rb
  clip(xa-ra,ya-ra,ra*2+1,ra+1)
  circ(xa,ya,ra,0)
  clip(xb-rb,yb-rb,rb*2+1,rb+1)
  circ(xb,yb,rb,0)
  clip()
 elseif s.blink < 0.05 then
  line(xa-ra,ya,xa+ra,ya, s.cd)
  line(xb-rb,yb,xb+rb,yb, s.cd)
 else
  draw_eye(xa,ya,ra, s.c, arml.hed.x, arml.hed.y)
  draw_eye(xb,yb,rb, s.c, arml.hed.x, arml.hed.y)
 end
 
 local mx = x+s.mouthx*r
 local my = y+s.mouthy*r
 local nx = x+s.nosex*r
 local ny = y+s.nosey*r
 pal(7,0)
 spr(s.mouth*2, mx-8, my-4, 2, 1)
 spr(s.nose, nx-4, ny-4)
 pal(7,7)
 
-- camera(-x, -y)
 for l in all(s.limbs) do
  local xx = x+l.x*0.9*r
  local yy = y+l.y*0.9*r
  local k = ka+kb*cos(t*2+yy/32)
  camera(-xx+sgn(l.x)*k, -yy)
  draw_limb(l)
 end
 camera()
 
 s.huglx = x+1.2*r*cos(s.hugl)
 s.hugly = y+1.2*r*sin(s.hugl)
 s.hugrx = x+1.2*r*cos(s.hugr)
 s.hugry = y+1.2*r*sin(s.hugr)
 
 if not s.happy then
  if left then
   draw_circlething(s.huglx, s.hugly, 10+2*cos(t*2), t*0.5)
  else
   draw_circlething(s.hugrx, s.hugry, 10+2*cos(t*2), -t*0.5)
  end
 end
end

function draw_ghost_shadow(s, x, y)
 local r = s.r+4*cos(t)
 local ka = 4
 local kb = 2.5
 
 xmod-=shadx
 ymod-=shady
 draw_ghostshape(x,y,r,0,0,0, ka, kb)
 xmod+=shadx
 ymod+=shady
end


function draw_eye(x, y, r, c, ax, ay)
 circfill(x,y,r,7)
 
 local a = atan2(x-ax, y-ay)+0.5
 local d = dist(x-ax, y-ay)
 
 local rb=max(0.4*r,2)
 d = min(d/8, r-rb)
 
 local dx = d*cos(a)
 local dy = d*sin(a)
 
 circfill(x+dx, y+dy, rb, 0)
end

function draw_ghostshape(x,y,r,c,cd,cl,ka,kb)
 r=flr(r)
 y=flr(y)
 
 r+=1
 local xx=r-1
 local yy=0
 local dx=1
 local dy=1
 local err=dx-r*2
 
 local lxx=0
 
 local rainbow = (c<0)
 
 cd,cl=cl,cd
 
 while xx>=yy do
  local yyy=y-yy
  
  local k = get_wave_k(yyy)
  camera(k,0)

  if rainbow then
   fillp(0b0101101001011010)
   rectfill(x-xx, yyy, x+xx, yyy, flr(yyy/8+t*8)%8+8+shl(flr(yyy/8+t*8+0.5)%8+8,4))
  else
   rectfill(x-xx, yyy, x+xx, yyy, c)
  end
  
  err+=dy
  dy+=2
  
  if err>=-2 then
   local yyy=y-xx
   
   local k = get_wave_k(yyy)
   camera(k,0)
   
   if rainbow then
    fillp(0b0101101001011010)
    rectfill(x-yy, yyy, x+yy, yyy, flr(yyy/8+t*8)%8+8+shl(flr(yyy/8+t*8+0.5)%8+8,4))
   else
    rectfill(x-yy, yyy, x+yy, yyy, c)
   end
   --rectfill(x-yy, yyy, x+yy, yyy, c)

   lxx = yy+1
   
   xx-=1
   dx+=2
   err+=dx-r*2
  end
  
  yy+=1
 end
 
 yy = y+1
 xx = r-1
 vx = 0
 
 while xx > 0 do
  local k = get_wave_k(yy)
  camera(8*vx*cos(vx*2+t*3)+k,0)
  
  if rainbow then
   fillp(0b0101101001011010)
   rectfill(x-xx, yy, x+xx, yy, flr(yy/8+t*8)%8+8+shl(flr(yy/8+t*8+0.5)%8+8,4))
  else
   rectfill(x-xx, yy, x+xx, yy, c)
  end
 -- rectfill(x-xx, yy, x+xx, yy, c)
  
  xx -= vx
  vx += 0.02
  
  yy+=1
 end
 
 fillp()
 
 camera()
end

function get_wave_k(y)
 local ky = sgn(y%2-0.5)
 return ky*(4+1.5*cos(t*2+y/32+ky*0.1)-2*sin(-t*3-y/13-ky*0.15))
end

function get_wave_colors(c,cd,cl,y)
 local kc = flr(1.5*cos(t+y/64))
 if kc<0 then
  for i=-1,kc,-1 do
   c =drk[c]
   cl=drk[cl]
   cd=drk[cl]
  end
 elseif kc>0 then
  for i=1,kc,1 do
   c =lit[c]
   cl=lit[cl]
   cd=lit[cl]
  end
 end
 
 return c,cd,cl
end


function draw_circlething(x,y,r,a)
-- if true then return end

 local rb = r+4
 for i=a,a+5/6,1/6 do
  local co = cos(a+i)
  local si = sin(a+i)
  local xa,ya=x+r*co,y+r*si
  local xb,yb=x+rb*co,y+rb*si
  local kx,ky=0,0
  
  ky=-1 line(xa+kx,ya+ky,xb+kx,yb+ky, 0) ky=0
  kx=-1 line(xa+kx,ya+ky,xb+kx,yb+ky, 0)
  kx=1  line(xa+kx,ya+ky,xb+kx,yb+ky, 0)
  ky=1  line(xa+kx,ya+ky,xb+kx,yb+ky, 0)
  kx=-1 line(xa+kx,ya+ky,xb+kx,yb+ky, 0) kx=0
  ky=2  line(xa+kx,ya+ky,xb+kx,yb+ky, 0)
  ky=1  line(xa+kx,ya+ky,xb+kx,yb+ky, 13)
  ky=0  line(xa+kx,ya+ky,xb+kx,yb+ky, 7)
 end
end


function create_star(x,y,a,spd)
 local s={
  x=x,
  y=y,
  vx=spd*cos(a),
  vy=spd*sin(a),
  typ=flr(rnd(2)),
  t=rnd(0.04)
 }
 
 add(stars, s)
 return s
end

function update_star(s)
 s.x += s.vx
 s.y += s.vy
 
 s.vx *= 0.9
 s.vy *= 0.9
 
 s.t += 0.01
 
 if s.t/0.05>=8 then
  del(stars,s)
 end
end

function draw_star(s)
 local sp=48+s.typ*8+s.t/0.05
 pal(5,0)
 spr(sp,s.x-4,s.y-4)
 pal(5,5)
end

function create_smoke(x,y,c)
 local a=rnd(1)
 local spd=rnd(2)
 local s={
  x=x,
  y=y,
  vx=spd*cos(a),
  vy=spd*sin(a),
  c=c,
  r=2+rnd(2),
  rn=0.02+rnd(0.05)
 }

 add(smoke,s)

 return s
end

function update_smoke(s)
 s.x+=s.vx
 s.y+=s.vy

 s.vx*=0.95
-- s.vy*=0.95
 s.vy=lerp(s.vy,-s.rn*20,1-s.rn)

 s.r-=s.rn
 if s.r<0 and rnd(#smoke)<10 then
  del(smoke,s)
 end
end

function draw_smoke(s)
 circfill(s.x, s.y, s.r, s.c)
end


function transition(out)
 if in_transition then
  return
 end
 in_transition = true

 local k=30
 local la,lb,lc=1, k, 1
 if out then
  la,lb,lc = lb, la, -1
 end
 
-- out = out and -1 or 1
 
 for f=la,lb,lc do
  local t=f/k
 
  _update()
  _draw()
  
  if out then
   for y=0,128,8 do
    for x=(y/8)%2*8, 128, 16 do
     local r=8-(x/32+y/32)+t*16-8
     circfill(x,y,r,0)
    end
   end
  else
   for y=0,128,8 do
    for x=(y/8)%2*8, 128, 16 do
     local r=(x/32+y/32)+t*16-8
     circfill(x,y,r,0)
    end
   end
  end
  
  flip()
 end
 
 in_transition = false
end


function draw_title(y)
 y-=8
 local x=64-7*8
 for i=0,6 do
  local s = 64+i*2
  local yy = y+4*sin(i/5.5+t*2)
  if i%2==flr(t/0.3)%2 then
   pal(1,bga)
   pal(3,bga)
   pal(2,bgb)
  else
   pal(1,bgb)
   pal(3,bgb)
   pal(2,bga)
  end
  spr(s,x,yy,2,2)
  x+=16
 end
 pal(1,1)
 pal(2,2)
 pal(3,3)
end

function draw_title_rainbow(y)
 y-=8
 local x = 64-7*17*0.5+1
 pal(1,0)
 pal(2,0)
 for i=0,6 do
  local s=64+i*2
  local yy=y+4*sin(i/5.5+t*2)
  spr(s,x-1,yy,2,2)
  spr(s,x+1,yy,2,2)
  spr(s,x,yy-1,2,2)
  spr(s,x,yy+1,2,2)
  x+=17
 end
 pal(1,1)
 pal(2,2)

 local x = 64-7*17*0.5+1
 local xn = 0
 fillp(0b1010010110100101)
-- fillp(0b0000101000000101)
-- fillp(0b0001010100011111)

 fps={
[0]=--0b0000000000000000,
    0b1010000010100000,
    0b1010010110100101,
    0b1111010111110101,
--    0b1111111111111111
 }

-- local cs={}
-- for i=0,15 do
--  cs[i]={}
--  local ca=flr(i/2)+8
--  local cb=flr(i/2+0.5)%8+8
--  cs[i][1]=ca+shl(cb,4)
--  cs[i][2]=drk[ca]+shl(drk[cb],4)
--  cs[i][3]=lit[ca]+shl(lit[cb],4)
-- end

 for i=0,6 do
  local let=titledata[i]
  local yy = y+4*sin(i/5.5+t*2)
  for yyy=0,15 do
   local lin=let[yyy]
   for xxx=0,15 do
    local d=lin[xxx]
    if d then
     local c=(xn+xxx)/8+(yyy)/16-t*24
     --fillp(band(c*100,0b1111111111111111))
     fillp(fps[flr(c*3)%3])
     c=d[flr(c)%16]

     pset(x+xxx, yy+yyy, c)
    end
   end
  end
  xn+=16
  x+=17
 end
 fillp()
end

function draw_title_shadow(y)
 y-=8

 xmod-=shadx
 ymod-=shady
 camera()
 pal(1,0)
 pal(2,0)
 pal(3,0)

 local x = 64-7*17*0.5+1 
 for i=0,6 do
  local s=64+i*2
  local yy=y+4*sin(i/5.5+t*2)
  spr(s,x-1,yy,2,2)
  spr(s,x+1,yy,2,2)
  spr(s,x,yy-1,2,2)
  spr(s,x,yy+1,2,2)
  x+=17
 end
 
 pal(1,1)
 pal(2,2)
 pal(3,3)
 xmod+=shadx
 ymod+=shady
 camera()
end


function draw_end()
 local endt=endt
 for lin in all(ending) do
  endt-=lin.t
  local str=lin.str
  if endt<0 then
   break
  else
   local n=endt/0.04
   local st=0
   local dx=0
   if #str>32 and n>32 then
    st=min(flr(n-32),#str-32)
    dx=-min((n-32)*4, (#str-32)*4)
   end
   
   for i=st,min(n,#str-1) do
    local ch=sub(str,i+1,i+1)
    local x
    if lin.right then
     x=128-(#str-i)*4
    elseif lin.left then
     x=1+i*4+dx
    else
     x=64-#str*2+i*4
    end
    
    local y=lin.y--+1.5*cos(i/7.5+lin.y/32+t*4)
    local cs={7,13,1}
    local cn
    
    if lin.darker then
     cs={13,1}
    end
    
    if i==flr(n) then
     cn=(endt%0.04)*100
     y+=4-cn
     for j=1,#cs do
      for m=3,cn,-1 do
       cs[j]=drk[cs[j]]
      end
     end
    end
    
    for j=#cs,1,-1 do
     print(ch,x,y+j,cs[j])
    end
   end
   
   endt-=#str*0.04
  end
 end
end


function draw_text(str,x,y,c0,c1,c2)
 x-=#str*2
 
 if c2 then
  for i=1,#str do
   local s,xx,yy = sub(str,i,i), x, y+1.5*cos(i/8+t*3)-cos(i/5-t*1.7+0.17)
   print(s,xx  ,yy-1,c1)
   print(s,xx-1,yy  ,c1)
   print(s,xx+1,yy  ,c1)
   print(s,xx-1,yy+1,c1)
   print(s,xx+1,yy+1,c1)
   print(s,xx  ,yy+2,c1)
   print(s,xx  ,yy+1,c2)
   print(s,xx,yy,c0)
   x+=4
  end
 elseif c1 then
  for i=1,#str do
   local s,xx,yy = sub(str,i,i), x, y+2.5*cos(i/8+t*3)-cos(i/5-t*1.7+0.17)
   print(s,xx-1,yy-1,c1)
   print(s,xx  ,yy-1,c1)
   print(s,xx+1,yy-1,c1)
   print(s,xx-1,yy  ,c1)
   print(s,xx+1,yy  ,c1)
   print(s,xx-1,yy+1,c1)
   print(s,xx  ,yy+1,c1)
   print(s,xx+1,yy+1,c1)
   print(s,xx,yy,c0)
   x+=4
  end
 else
  for i=1,#str do
   local s,xx,yy = sub(str,i,i), x, y+2.5*cos(i/8+t*3)-cos(i/5-t*1.7+0.17)
   print(s,xx,yy,c0)
   x+=4
  end
 end
end


-- failed experiment! :)
function move_pitch(l)
-- local diff=l-pitch
-- for sf=18,23 do
--  local sfa=0x3200+sf*68
--  for n=0,31 do
--   local a=sfa+n*2
--   local b1=peek(a)
--   local b2=peek(a+1)
--   local ins=band(shr(b1,6),0b11)+band(b2,0b1)*4
--   if ins<6 then
--    local pi=band(b1,0b111111)
--    pi+=diff
--    b1=band(b1,0b11000000)+pi
--    poke(a,b1)
--   end
--   
--  end
-- end
-- pitch=l
end


_camera = camera
function camera(x, y, nomod)
 x=x or 0
 y=y or 0
 if nomod then
  _camera(x,y)
 else
  _camera(xmod+x, ymod+y)
 end
end


function spline(a,b,c,t)
 local d=lerp(a,c,t)
 local e=lerp(c,b,t)
 return lerp(d,e,t)
end

function angle_lerp(a,b,t)
 return a+t*((b-a+0.5)%1-0.5)
end

function angle_diff(a1,a2)
 local a=a2-a1
 return (a+0.5)%1-0.5
end

function all_colors_to(c)
 if c then
  for i=0,15 do
   pal(i,c)
  end
 else
  for i=0,15 do
   pal(i,i)
  end
 end
end

function smolsqr(a) return 0.01*a*a end
function smolsqrdist(x,y) return smolsqr(x)+smolsqr(y) end

function plerp(pa,pb,i) return lerp(pa.x,pb.x,i),lerp(pa.y,pb.y,i) end
function lerp(a,b,i) return (1-i)*a+i*b end
function dist(xa,ya,xb,yb) if xb then xa=xb-xa ya=yb-ya end return sqrt(sqrdist(xa,ya)) end
function sqrdist(x,y) return x*x+y*y end
function sqr(a) return a*a end
function round(a) return flr(a+0.5) end
--function ceil(a) return flr(a+0x.ffff) end
function frnd(a) return flr(rnd(a)) end
function rnd1() return rnd(1) end
function pick(ar) return ar[frnd(#ar)+1] end
function chance(a) return rnd(100)<a end


--by @electricgryphon
--modified by trasevol_dog
function trifill( x1,y1,x2,y2,x3,y3, color1)

if(color1)color(color1)

local min_x=min(x1,min(x2,x3))
local max_x=max(x1,max(x2,x3))
local min_y=min(y1,min(y2,y3))
local max_y=max(y1,max(y2,y3))

local x1=band(x1,0xffff)
local x2=band(x2,0xffff)
local y1=band(y1,0xffff)
local y2=band(y2,0xffff)
local x3=band(x3,0xffff)
local y3=band(y3,0xffff)

local width=max_x-min_x
local height=max_y-min_y

if(width>height)then --wide triangle 
local nsx,nex
--sort y1,y2,y3
if(y1>y2)then
y1,y2=y2,y1
x1,x2=x2,x1
end

if(y1>y3)then
y1,y3=y3,y1
x1,x3=x3,x1
end

if(y2>y3)then
y2,y3=y3,y2
x2,x3=x3,x2 
end

if(y1!=y2)then 
local delta_sx=(x3-x1)/(y3-y1)
local delta_ex=(x2-x1)/(y2-y1)


nsx=x1
nex=x1
min_y=y1


max_y=y2

for y=min_y,max_y-1 do

rectfill(nsx,y,nex,y)
nsx+=delta_sx
nex+=delta_ex
end

else --where top edge is horizontal
nsx=x1
nex=x2
end

if(y3!=y2)then
local delta_sx=(x3-x1)/(y3-y1)
local delta_ex=(x3-x2)/(y3-y2)

min_y=y2
max_y=y3

for y=min_y,max_y do
rectfill(nsx,y,nex,y)
nex+=delta_ex
nsx+=delta_sx
end

else --where bottom edge is horizontal
rectfill(nsx,y3,nex,y3)
end
else --tall triangle -----------------------------------<><>----------------
local nsy,ney

--sort x1,x2,x3
if(x1>x2)then
x1,x2=x2,x1
y1,y2=y2,y1
end

if(x1>x3)then
x1,x3=x3,x1
y1,y3=y3,y1
end

if(x2>x3)then
x2,x3=x3,x2
y2,y3=y3,y2 
end

if(x1!=x2)then 
local delta_sy=(y3-y1)/(x3-x1)
local delta_ey=(y2-y1)/(x2-x1)

nsy=y1
ney=y1
min_x=x1

max_x=x2

for x=min_x,max_x-1 do

rectfill(x,nsy,x,ney)
nsy+=delta_sy
ney+=delta_ey
end

else --where top edge is horizontal
nsy=y1
ney=y2
end

if(x3!=x2)then
local delta_sy=(y3-y1)/(x3-x1)
local delta_ey=(y3-y2)/(x3-x2)

min_x=x2
max_x=x3

for x=min_x,max_x do

rectfill(x,nsy,x,ney)
ney+=delta_ey
nsy+=delta_sy
end

else --where bottom edge is horizontal

rectfill(x3,nsy,x3,ney)

end

end
end


--by @electricgryphon
--function trifill( x1,y1,x2,y2,x3,y3, color1)
--
--if(color1)color(color1)
--
--local min_x=min(x1,min(x2,x3))
--if(min_x>127)return
--local max_x=max(x1,max(x2,x3))
--if(max_x<0)return
--local min_y=min(y1,min(y2,y3))
--if(min_y>127)return
--local max_y=max(y1,max(y2,y3))
--if(max_y<0)return
--
--local x1=band(x1,0xffff)
--local x2=band(x2,0xffff)
--local y1=band(y1,0xffff)
--local y2=band(y2,0xffff)
--local x3=band(x3,0xffff)
--local y3=band(y3,0xffff)
--
--local width=min(127,max_x)-max(0,min_x)
--local height=min(127,max_y)-max(0,min_y)
--
--if(width>height)then --wide triangle 
--local nsx,nex
----sort y1,y2,y3
--if(y1>y2)then
--y1,y2=y2,y1
--x1,x2=x2,x1
--end
--
--if(y1>y3)then
--y1,y3=y3,y1
--x1,x3=x3,x1
--end
--
--if(y2>y3)then
--y2,y3=y3,y2
--x2,x3=x3,x2 
--end
--
--if(y1!=y2)then 
--local delta_sx=(x3-x1)/(y3-y1)
--local delta_ex=(x2-x1)/(y2-y1)
--
--if(y1>0)then
--nsx=x1
--nex=x1
--min_y=y1
--else --top edge clip
--nsx=x1-delta_sx*y1
--nex=x1-delta_ex*y1
--min_y=0
--end
--
--max_y=min(y2,128)
--
--for y=min_y,max_y-1 do
--
--rectfill(nsx,y,nex,y)
--nsx+=delta_sx
--nex+=delta_ex
--end
--
--else --where top edge is horizontal
--nsx=x1
--nex=x2
--end
--
--if(y3!=y2)then
--local delta_sx=(x3-x1)/(y3-y1)
--local delta_ex=(x3-x2)/(y3-y2)
--
--min_y=y2
--max_y=min(y3,128)
--if(y2<0)then
--nex=x2-delta_ex*y2
--nsx=x1-delta_sx*y1
--min_y=0
--end
--
--for y=min_y,max_y do
--rectfill(nsx,y,nex,y)
--nex+=delta_ex
--nsx+=delta_sx
--end
--
--else --where bottom edge is horizontal
--rectfill(nsx,y3,nex,y3)
--end
--else --tall triangle -----------------------------------<><>----------------
--local nsy,ney
--
----sort x1,x2,x3
--if(x1>x2)then
--x1,x2=x2,x1
--y1,y2=y2,y1
--end
--
--if(x1>x3)then
--x1,x3=x3,x1
--y1,y3=y3,y1
--end
--
--if(x2>x3)then
--x2,x3=x3,x2
--y2,y3=y3,y2 
--end
--
--if(x1!=x2)then 
--local delta_sy=(y3-y1)/(x3-x1)
--local delta_ey=(y2-y1)/(x2-x1)
--
--if(x1>0)then
--nsy=y1
--ney=y1
--min_x=x1
--else --top edge clip
--nsy=y1-delta_sy*x1
--ney=y1-delta_ey*x1
--min_x=0
--end
--
--max_x=min(x2,128)
--
--for x=min_x,max_x-1 do
--
--rectfill(x,nsy,x,ney)
--nsy+=delta_sy
--ney+=delta_ey
--end
--
--else --where top edge is horizontal
--nsy=y1
--ney=y2
--end
--
--if(x3!=x2)then
--local delta_sy=(y3-y1)/(x3-x1)
--local delta_ey=(y3-y2)/(x3-x2)
--
--min_x=x2
--max_x=min(x3,128)
--if(x2<0)then
--ney=y2-delta_ey*x2
--nsy=y1-delta_sy*x1
--min_x=0
--end
--
--for x=min_x,max_x do
--
--rectfill(x,nsy,x,ney)
--ney+=delta_ey
--nsy+=delta_sy
--end
--
--else --where bottom edge is horizontal
--
--rectfill(x3,nsy,x3,ney)
--
--end
--
--end
--end





--failure at smoothing curve:

-- local xa,ya,xb,yb
-- for kt=1,#test, 0.25 do
--  local tt=(kt+1)%2
--  local t=tt/2
--  local k=kt-tt
--  
--  local x,y,co,si,v
--  if kt==k then
--   local v=test[k]
--   x,y=v.x,v.y
--   co=v.si
--   si=-v.co
--  else
--   local va=test[k]
--   local vb=test[k+1]
--   local vc=test[k+2]
--   x=spline(va.x, vc.x, vb.x, t)
--   y=spline(va.y, vc.y, vb.y, t)
--   co=spline(va.si, vc.si, vb.si, t)
--   si=-spline(va.co, vc.co, vb.co, t)
--  end
--
--  local r=5*k/#test+1
--  
--  local xc=x+r*co
--  local yc=y+r*si
--  local xd=x-r*co
--  local yd=y-r*si
--  
----  if kt==#test then
----   local x=v.x-4*v.co
----   local y=v.y-4*v.si
----   circfill(x, y, 8, c0)
----   circ(x, y, 8, c1)
----   circ(x, y, 9, 0)
----  end
--
--  local c0=flr(kt+time()*4)%7+8
--  local c1=drk[c0]
--  local c2=lit[c0]
--  
--  if xa then
--   color(c0)
--   trifill(xa,ya,xb,yb,xc,yc)
--   trifill(xb,yb,xc,yc,xd,yd)
--   --color(c1)
--   line(xa,ya,xc,yc,c1)
--   line(xb,yb,xd,yd,c2)
--   color(0)
--   line(xa+co,ya+si,xc+co,yc+si)
--   line(xb-co,yb-si,xd-co,yd-si)
--  end
--  
--  xa,ya,xb,yb = xc,yc,xd,yd
-- end