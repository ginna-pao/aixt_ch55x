// Project name: adc
// Author: 
//	- Fernando M. Santa
//	- Katalina Guzman
//	- Paola Carreño
// Date: 2024-2026 
// ch55x boards
import time
import adc
import adc_fn
import pin_fn as pin

fn main() {
    // Configuración del LED integrado
    pin.setup(pin.led0, pin.output)

    for {
        // Leer ADC (P1.1)
        value := adc_fn.read(adc.ch0)

        // Comparar el valor leído
        if value > 127 {
            pin.high(pin.led0)
        } else {
            pin.low(pin.led0)
        }

        time.sleep_ms(20)
    }
}
