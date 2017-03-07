print(wifi.sta.getip())
wifi.setmode(wifi.STATION)

--Fill Your SSID and PASSWORD
wifi.sta.config("SSID","password")

wifi.sta.connect()
tmr.alarm(1, 1000, 1, function()
     if wifi.sta.getip() == nil then
         print("Connecting...")
     else
         tmr.stop(1)
         print("Connected, IP is "..wifi.sta.getip())
     end
end)