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
if ( isInChat() )
	return
pos := getCoordinates()
sendChatMessage("/r " calculateZone(pos[1],pos[2],pos[3]))
return

NumpadMult::
if ( isInChat() )
	return
pos := getCoordinates()
sendChatMessage("/r " getPlayerDirection() " from " calculateZone(pos[1],pos[2],pos[3]))
return

NumpadDiv::
	sendChatMessage("/opentoll")
return