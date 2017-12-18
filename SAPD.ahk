SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#UseHook
#NoEnv
#SingleInstance force
#include %A_ScriptDir%\SAMP.ahk

Hotkey, Enter, Off
Hotkey, Escape, Off

bchat:=0
return

+T:: 
~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return

~NumpadEnter::
~Enter::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

~Escape::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return


;#########################################################################################################


Numpad2::
if ( IsInChat() )
	return
SendChat("/r " GetPlayerZone())
return

NumpadMult::
if ( IsInChat() )
	return
SendChat("/r " getPlayerDirection() " from " GetPlayerZone())
return

NumpadDiv::
	SendChat("/opentoll")
return