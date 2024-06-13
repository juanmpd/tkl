# Configuración autoHotKey: extras para teclados TKL (NumPad y más) y para usar en español teclado ANSI

Pensado en poder programar con la misma comodidad que en un teclado ISO español de tamaño completo.

![teclado_numpad](https://github.com/juanmpd/tkl/assets/45386331/51453a79-11a1-4be5-8886-446af10bebd5)

Probado con AutoHotKey v2.0.2
¿Qué ofrece?
* Pensando en las teclas que faltan en un teclado TKL:
  * Habilitar/deshabilitar con CTRL+F12 la simulación del teclado numérico con los botones de la zona derecha (basado en https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard).
  * Permitir que '+', '*' y '-' expandan/colapsen las carpetas en el explorador de archivos tal como lo harían en el NumPad.
* Pensando en la utilización de un teclado de distribución ANSI (sin tecla de '<'/'>') cuando estás acostumbrado a uno ISO en español de España:
  * Obtener '<' y '>' al pulsar ALT + ',' y '.' (ubicación que tendría en un teclado en inglés)
  * Obtener '<' y '>' al pulsar AltGr+ 'z' y 'x' (combinación que la distribución de español en Linux)
  * [Esto al final lo he dejado comentado] ~~Obtener '<' y '>' al pulsar Shift izquierdo y soltarlo, manteniendo su comportamiento normal si no (pensando en la tecla que falta de '<'/'>', donde el shift izquierdo ocupa su posición). Si se usa un teclado ISO (lo normal en un teclado europeo) es mejor dejar comentadas las líneas correspondientes.~~

# TKL keyboards: keeping full sized keyboard productivity (NumPad and more)

Although TKL keyboards are usually sold for gaming use, they are great for office use, for ergonomics reasons.
After working in front of a keyboard 8 hours a day during years, you may stumble over some physical problems. Apart from using an ergonomic mouse, using a TKL keyboard may also help.
Using a TKL keyboard reduces the distance that the right hand needs to travel when alterning between keyboard and mouse, and it can help reduce the pain in the wrist or the back.
But when using a TKL keyboard we lose some things that may affect effectiveness:
- It lacks the NumPad for fast typewriting of numbers
- It lacks the [+,-,*,/] NumPad keys, which are used for expanding/colapsing folders

These drawbacks can be overcome by using AutoHotKey with a configuration such as the one presented here.
It has been tuned targeting an Spanish layout keyboard, but it should work for other layouts with minimal changes.

What does this AutoHotKey configuration give us?
* It allows using keys as NumPad (credits to https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard). This is enabled/disabled by double pressing CTRL+F12
* It allows using Shift & '+' as if it was '*' (as usual), but from the Numpad, so that Windows recognises it to expand folders (recursively).
* '+' is made equivalent to '+' (as usual), but '+' from the Numpad, so that Windows recognises it to expand folders. This is done with care to avoid interfering with ALT & common '+', which should show ']' as expected (in a spanish keyboard).
* '-' is made equivalent to '-' from the Numpad, so that Windows recognises it to collapse folders. This is done avoiding interference with Shift & common '-', which should show '_' as expected (in a spanish keyboard).

There is algo another bonus. You may find TKL keyboards with ANSI layout quite easily, but if you are used to the ISO layout, you will miss one key when using ANSI layout keyboards: ANSI has a bigger left-shift key, and it lacks the ISO layout key between left-shift key and Z (used for < and > in spanish layouts).
With this AutoHotKey configuration:
* You get < and > by pressing ALT along ',' and '.' (where found in english keyboards)
* You also get < and > by pressing AltGr along 'z' and 'x' (as in spanish Linux layout)
* [At the end I have left this commented out] ~~And finally, though you may prefer commenting this section out: you can get '<'/'>' by pressing and releasing alone the left-shift key (where you would hit it in an spanish ISO keyboard), but you can still use it to get uppercase letters as usual.
If you were not targeting an spanish layout and < and > is not what you are missing, you can easily adapt the configuration for your needs.~~

This has been tested with AutoHotKey v2.0.2
