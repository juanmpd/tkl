; NOTE: When running a remote desktop session, not everything works as expected. Somethings work only if not at fullscreen, somethings don't work at
; all. This happens with CTRL+F12, ALT+8, ALT+9, LShift without RShift... This is probably related to the remote desktop session shortcut keys configuration
; see https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc783638(v=ws.10)?redirectedfrom=MSDN).
; So, in this cases, it is best to run AutoHotKey in the remote desktop session itself. 

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
; Get < and > by pressing ALT-GR along z and x (as in spanish layout under Linux)
<^>!z::<
<^>!x::>
; Get < and > by pressing ALT along , and . (where it would be located were it a english keyboard)
!,::<
!.::>
; Get < and > by pressing ALT along 8 and 9
!8::<
!9::>

/*
; Next changes are targeted for spanish market
; ANSI keyboards do not have the key for < and > between the LeftShift and the Z keys as in ISO keyboards.
; So I tried to simulate this key when detecting that LeftShift were pressed alone, so that I could get < and > 
; in an ANSI keyboard as I would with an ISO keyboard. But also while keeping it 'modifier' behaviour if pressed
; along another key
 #HotIf GetKeyState('RShift') && !WinActive("ahk_exe mstsc.exe")
LShift::>
#HotIf
#HotIf not(GetKeyState('RShift'))
~LShift::{
	; If running a remote desktop session, it is best to also run autohotkey remotely. For this to work,
	; we should avoid running this piece of code locally, as it has been found to interfere with the
	; remote session resulting in unwanted behaviour.
	if !WinActive("ahk_exe mstsc.exe") {
		KeyWait('LShift') ; Wait for release
		; Si hemos pulsado LShift porque queremos '<', no habremos pulsado nada antes de soltar LShift, y en general
		; lo pulsaremos y soltaremos rápido. Si se mantiene más rato suele ser por estar pensando en combinar SHIFT con otra cosa y al final arrepentirnos	
		if ((A_PriorKey=='LShift') && (A_TimeSinceThisHotkey < 200)) {	
			Send "<"
		}
	}
}
#HotIf
 */