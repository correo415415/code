-- 1-d cellular automata demo
-- by zep
-- ref: wikipedia.org/wiki/cellular_automaton

cls()
l=0 -- line count

--uncomment for kaleidoscope
--poke(0x5f2c,7)

-- starting rule set
r={[0]=0,1,0,1,1,0,0,1}


function _update()

	l+=1
	-- change rule every 16 lines
	-- (or when ❎ is pressed)
	if (l%16==0 or btnp(❎)) then
		for i=1,7 do
			r[i]=flr(rnd(2.3))
		end
	end
	
	
	-- if the line is blank, add
	-- something to get it started
	
	found = false
	for x=0,127 do
		if (pget(x,127)>0) found=true
	end
	
	if (not found) then
		pset(63,127,7)
	end

end

function _draw()
	-- scroll
	memcpy(0x6000,0x6040,0x1fc0)
	
	for x=0,127
	 do n=0 
	 for b=0,2 do
	  if (pget(x-1+b,126)>0)
	  then
	   n += 2 ^ b -- 1,2,4
	  end
	 end
	 pset(x,127,r[n]*7)
	end
	
end

