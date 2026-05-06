-- title:  Sandbox Smoke Test
-- author: GameFork
-- desc:   Tiny TIC-80 game for iframe sandbox smoke testing
-- script: lua

x=120
y=68
t=0

function TIC()
  t=t+1
  if btn(0) then y=y-1 end
  if btn(1) then y=y+1 end
  if btn(2) then x=x-1 end
  if btn(3) then x=x+1 end

  if x<8 then x=8 end
  if x>232 then x=232 end
  if y<8 then y=8 end
  if y>128 then y=128 end

  cls((t//20)%16)
  print("TIC-80 sandbox smoke",54,12,12)
  print("Arrow keys move",78,22,15)

  for i=0,6 do
    circ(30+i*30,100+math.sin((t+i*12)/12)*10,5+i%3,2+i)
  end

  circ(x,y,8,15)
  circ(x-3,y-2,2,12)
  circ(x+3,y-2,2,12)
  rect(x-4,y+4,8,2,12)
end
