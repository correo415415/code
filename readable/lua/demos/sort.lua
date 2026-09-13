-- sorting demo
-- by zep

-- starting giraffee heights
g = {3,5,7,2,9,1,2}

-- draw a giraffe at x,y with
-- neck length of l
function draw_giraffe(x,y,l)

	-- body
	spr(33,x-8,y-8,2,1)
	
	-- neck for l segments
	for i=1,l do
		spr(18, x,y-8-i*8)
	end
	
	-- put head on top
	spr(2, x,y-16-l*8)

end

function _draw()
	cls(12)
	rectfill(0,110,127,127,14)
	
	print("press 🅾️ to randomize",
	      22, 2, 7)
	print("press ❎ to sort",
	      32, 10, 7)
	
	for i=1,7 do
		draw_giraffe(i*16,110,g[i])
	end

end

function _update()
	
	-- ❎ to sort
	
	if (btnp(5)) then
		
		-- look for a pair of
		-- giraffees out of order
		
		for i=1,6 do
			
			if (g[i] > g[i+1]) then
				
				-- the left one is taller,
				-- so swap them!
				temp   = g[i]
				g[i]   = g[i+1]
				g[i+1] = temp
				
				sfx(0)
				
				-- just one swap for now!
				break 
				
			end
		end
		
	end
	
	
	-- 🅾️ to randomize
	
	if (btnp(4)) then
		
		for i=1,7 do
			g[i]=flr(rnd(9))
		end
		
		sfx(1)
		
	end


end
