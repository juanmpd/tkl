# Configuración autoHotKey: extras para teclados TKL (NumPad y más) y para usar en español teclado ANSI

Pensado en poder programar con la misma comodidad que en un teclado ISO español de tamaño completo.

![teclado_numpad](https://github.com/juanmpd/tkl/assets/45386331/c0c14ee8-514f-4605-aa4a-3c6acde178a3)
Probado con AutoHotKey v2.0.2
¿Qué ofrece?
* Pensando en las teclas que faltan en un teclado TKL:
  * Habilitar/deshabilitar con CTRL+F12 la simulación del teclado numérico con los botones de la zona derecha (basado en https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard).
  * Permitir que '+', '*' y '-' expandan/colapsen las carpetas en el explorador de archivos tal como lo harían en el NumPad.
* Pensando en la utilización de un teclado de distribución ANSI cuando estás acostumbrado a uno ISO en español de España:
  * Obtener '<' y '>' al pulsar ALT + '8' y '9' (pensando en teclado ANSI sin tecla de '<'/'>')
  * Obtener '<' y '>' al pulsar Shift izquierdo y soltarlo, manteniendo su comportamiento normal si no (pensando en teclado ANSI sin tecla de '<'/'>', donde el shift izquierdo ocupa su posición). Si se usa un teclado ISO (lo normal en un teclado europeo) es mejor dejar comentadas las líneas correspondientes.

What do you get?
* Allow using keys as NumPad (credits to https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard) by double pressing CTRL+F12
* Shift & '+' made equivalent to '*' (as usual), but from the Numpad, so that Windows recognises it to expand folders (recursively).
* '+' made equivalent to '+' (as usual), but '+' from the Numpad, so that Windows recognises it to expand folders. But avoid these changes from interfering with ALT & common '+', which should show ']' as expected (in a spanish keyboard).
* '-' made equivalent to '-' from the Numpad, so that Windows recognises it to collapse folders. But avoid that change interfering with Shift & common '-', which should show '_' as expected.
* With ANSI keyboard in mind (ANSI lacks the ISO layout key for < and > between keys left-shift and Z): Get < and > by pressing ALT along 8 and 9
* For ANSI keyboards if you are used to ISO spanish layout keyboard, you can get '<'/'>' by pressing alone the left-shift key (where you would find it in an spanish ISO keyboard), or by pressing ALT+8/9.

