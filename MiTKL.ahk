; Shift & common '+' made equivalent to '*' (as usual), but '*' from the Numpad, so that it Windows recognises it to expand folders (recursively)
++::NumpadMult
; Common '+' made equivalent to '+' (as usual), but '+' from the Numpad, so that Windows recognises it to expand folders
+::NumpadAdd
; But avoid previous mappings interfering with ALT & common '+', which should show ']' as expected
!+::]
; Common '-' made equivalent to '-' from the Numpad, so that Windows recognises it to collapse folders
-::NumpadSub
; But avoid previous mappings interfering with Shift & common '-', which should show '_' as expected
+-::_

; Now allowing using keys as NumPad (idea from https://github.com/JACKCHAN000/Numpad-for-TKL-Keyboard) by double  pressing CTRL+F12
tkl_numpad := False
^F12::{
  ; Wait until toggle key released
  KeyWait('F12')	
  ; Wait a little bit to see if it is pressed again (double press)
  if (KeyWait('F12', 'DT.3')) {
	; If so, switch 'numpad' behaviour
	global tkl_numpad
	tkl_numpad := !tkl_numpad
	msgbox 'TKL numpad ' ((tkl_numpad)?'enabled':'disabled') '. Double press again F12 to switch.'
  }
}

; Mapping if numpad behaviour enabled
#HotIf tkl_numpad
{ 
	Up::Numpad0
	Delete::Numpad1
	End::Numpad2
	PgDn::Numpad3
	Insert::Numpad4
	Home::Numpad5
	PgUp::Numpad6
	PrintScreen::Numpad7
	ScrollLock::Numpad8
	Pause::Numpad9
}
#HotIf

; With ANSI keyboard in mind (ANSI lacks the ISO layout key for < and > between the LeftShift and the Z keys):
; Get < and > by pressing ALT along 8 and 9
!8::<
!9::>

; Next changes are targeted for spanish market
; ANSI keyboards do not have the key for < and > between the LeftShift and the Z keys as in ISO keyboards.
; So I tried to simulate this key when detecting that LeftShift were pressed alone, so that I could get < and > 
; in an ANSI keyboard as I would with an ISO keyboard. But also while keeping it 'modifier' behaviour if pressed
; along another key
LShift & F1::return  ; Make left-shift a prefix by using it in front of "&" at least once.
; No podemos usar '~', porque entonces al '<' le añade el propio tratamiento de Shift, que sería convertirlo a su mayúscula, que es '>'
#HotIf GetKeyState('RShift')
LShift::>
#HotIf
#HotIf not(GetKeyState('RShift'))
LShift::Send "<"
#HotIf
