adc_force_init_mode_desc = [===[

###Description
Checks and if necessary reconfigures the ADC mode setting in the ESP init data block.

####Syntax
`adc.force_init_mode(mode_value)`

####Parameters
`mode_value` One of `adc.INIT_ADC` or `adc.INIT_VDD33`.

####Example
```lua
-- in you init.lua:
if adc.force_init_mode(adc.INIT_VDD33)
then
  node.restart()
  return -- don't bother continuing, the restart is scheduled
end

print(\"System voltage (mV):\", adc.readvdd33(0))
```

####See also
[`node.restart()`](node.md#noderestart)
]===]

adc_force_init_mode_ret = [===[
####Returns
True if the function had to change the mode, false if the mode was already configured. On a true return the ESP needs to be restarted for the change to take effect.
]===]

adc_read_desc = [===[
Samples the ADC.

####Syntax
`adc.read(channel)`

####Parameters
`channel` always 0 on the ESP8266

If the ESP8266 has been configured to use the ADC for reading the system voltage, this function will always return 65535. This is a hardware and/or SDK limitation.

####Example
```lua
val = adc.read(0)
```
]===]

adc_read_ret = [===[
####Returns
the sampled value (number)
]===]

adc_readvdd33_desc = [===[
Reads the system voltage.

####Syntax
`adc.readvdd33()`

####Parameters
none
If the ESP8266 has been configured to use the ADC for sampling the external pin, this function will always return 65535. This is a hardware and/or SDK limitation.
]===]

adc_readvdd33_ret = [===[
####Returns
system voltage in millivolts (number)
]===]
