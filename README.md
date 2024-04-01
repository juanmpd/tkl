# Configuración autoHotKey: extras para teclados TKL (NumPad y más) y para usar en español teclado ANSI

Pensado en poder programar con la misma comodidad que en un teclado ISO español de tamaño completo.

![teclado_numpad](https://github.com/juanmpd/tkl/assets/45386331/72b8f6dd-9319-46db-83fe-6747324ae73f)
Probado con AutoHotKey v2.0.2
¿Qué ofrece?
* Pensando en las teclas que faltan en un teclado TKL:
  * Habilitar/deshabilitar con CTRL+F12 la simulación del teclado numérico con los botones de la zona derecha (basado en https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard).
  * Permitir que '+', '*' y '-' expandan/colapsen las carpetas en el explorador de archivos tal como lo harían en el NumPad.
* Pensando en la utilización de un teclado de distribución ANSI (sin tecla de '<'/'>') cuando estás acostumbrado a uno ISO en español de España:
  * Obtener '<' y '>' al pulsar ALT + ',' y '.' (ubicación que tendría en un teclado en inglés)
  * Obtener '<' y '>' al pulsar AltGr+ 'z' y 'x' (combinación que la distribución de español en Linux)
  * Obtener '<' y '>' al pulsar Shift izquierdo y soltarlo, manteniendo su comportamiento normal si no (pensando en la tecla que falta de '<'/'>', donde el shift izquierdo ocupa su posición). Si se usa un teclado ISO (lo normal en un teclado europeo) es mejor dejar comentadas las líneas correspondientes.

What do you get?
* Allow using keys as NumPad (credits to https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard) by double pressing CTRL+F12
* Shift & '+' made equivalent to '*' (as usual), but from the Numpad, so that Windows recognises it to expand folders (recursively).
* '+' made equivalent to '+' (as usual), but '+' from the Numpad, so that Windows recognises it to expand folders. But avoid these changes from interfering with ALT & common '+', which should show ']' as expected (in a spanish keyboard).
* '-' made equivalent to '-' from the Numpad, so that Windows recognises it to collapse folders. But avoid that change interfering with Shift & common '-', which should show '_' as expected.
* With ANSI keyboard in mind (ANSI lacks the ISO layout key for < and > between keys left-shift and Z): Get < and > by pressing ALT along ',' and '.', or AltGr along 'z' and 'x' (as in Linux)
* For ANSI keyboards if you are used to ISO spanish layout keyboard, you can get '<'/'>' by pressing alone the left-shift key (where you would find it in an spanish ISO keyboard).

