#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Lockin := False
SetScrollLockState, off
hotkey, ^q, off
hotkey, ^w, off
hotkey, ^e, off
hotkey, ^r, off
hotkey, ^t, off
hotkey, ^y, off
hotkey, ^u, off
hotkey, ^i, off
hotkey, ^o, off
hotkey, ^p, off
hotkey, ^a, off

F11::
lockin := !lockin
Return

ScrollLock::
lockin := false
SetScrollLockState % !GetKeyState("ScrollLock", "T")
hotkey, ^q, toggle
hotkey, ^w, toggle
hotkey, ^e, toggle
hotkey, ^r, toggle
hotkey, ^t, toggle
hotkey, ^y, toggle
hotkey, ^u, toggle
hotkey, ^i, toggle
hotkey, ^o, toggle
hotkey, ^p, toggle
hotkey, ^a, toggle
Return

^q::
xvalue = 500
goto MeatScript
Return
^w::
xvalue = 580
goto MeatScript
Return
^e::
xvalue = 675
goto MeatScript
Return
^r::
xvalue = 775
goto MeatScript
Return
^t::
xvalue = 870
goto MeatScript
Return
^y::
xvalue = 960
goto MeatScript
Return
^u::
xvalue = 1055
goto MeatScript
Return
^i::
xvalue = 1150
goto MeatScript
Return
^o::
xvalue = 1250
goto MeatScript
Return
^p::
xvalue = 1325
goto MeatScript
Return
^a::
xvalue = 1430
goto MeatScript
Return

#If, WinActive("ahk_exe VALORANT-Win64-Shipping.exe") and GetKeyState("ScrollLock", "T")
MeatScript:
Loop
{
    If !(GetKeyState("ScrollLock", "T"))
    {
        Break
    }
    sleep, 10
    MouseClick,, %xvalue%, 970
    If (Lockin)
    {
        MouseClick,, 960, 850
    }
    sleep, 10
}
Return
#If

f12::
ExitApp
return
