-- hello world
-- by zep

music(0)

function _draw()
	cls()
	
	-- for each color
	-- (from pink -> white)
	
	for col = 14,7,-1 do
		
		-- for each letter
		for i=1,11 do
		
			-- t() is the same as time()
			t1 = t()*30 + i*4 - col*2
			
			-- position
			x = 8+i*8     +cos(t1/90)*3
			y = 38+(col-7)+cos(t1/50)*5
			pal(7,col)
			spr(16+i, x, y)
		end
 end
	
	print("this is pico-8",
	 37, 70, 14) 
	print("nice to meet you",
	 34, 80, 12) 
	spr(1, 64-4, 90) -- ♥
end















