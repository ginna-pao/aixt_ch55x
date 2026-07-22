// Project name: analog_echo
// Author: 
//	- Fernando M. Santa
//	- Katalina Guzman
//	- Paola Carreño
// Date: 2024-2026 
// ch55x boards
import time
import adc
import adc_fn
import pwm
import pwm_fn

pwm_fn.setup_pin(pwm.ch2_2)

for {
    value := adc_fn.read(adc.ch0)

    pwm_fn.write(pwm.ch2_2, u8(value))

    time.sleep_ms(10)
}