tmr.alarm(1,5000,1,function() print("alarm 1") end)
tmr.alarm(0,1000,1,function() print("alarm 0") end)
tmr.alarm(2,2000,1,function() print("alarm 2") end)
-- after sometime
tmr.stop(0)