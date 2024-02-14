#  Configuración de AutoHotKey para compensar las limitaciones del teclado TKL (NumPad, +/*/- para colapsar/expandir carpetas)

Permitir que '+', '*' y '-' expandan/colapsen las carpetas en el explorador de archivos tal como lo harían en el NumPad.
Habilitar/deshabilitar con CTRL+F12 la simulación del teclado numérico con los botones de la zona derecha.
Obtener '<' y '>' al pulsar ALT + '8' y '9' (pensando en teclado ANSI sin tecla de '<'/'>')
Usado con AutoHotKey v2.0.2

Shift & common '+' made equivalent to '*' (as usual), but '*' from the Numpad, so that Windows recognises it to expand folders (recursively).
Common '+' made equivalent to '+' (as usual), but '+' from the Numpad, so that Windows recognises it to expand folders.
But avoid these changes from interfering with ALT & common '+', which should show ']' as expected.

Common '-' made equivalent to '-' from the Numpad, so that Windows recognises it to collapse folders.
But avoid that change interfering with Shift & common '-', which should show '_' as expected.

Allow using keys as NumPad (idea from https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard) by double  pressing CTRL+F12

With ANSI keyboard in mind (ANSI lacks the ISO layout key for < and > between the LeftShift and the Z keys): Get < and > by pressing ALT along 8 and 9

