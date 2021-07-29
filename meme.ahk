;OPTIMIZATIONS START
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -5
SetDefaultMouseSpeed, 0
SetWinDelay, -5
SetControlDelay, -1
;OPTIMIZATIONS END
;-----------------------------------------------buttons

gui,add,text, xm6 ym0,   ----------catware 1v1.lol External-----------

gui,add,text, xm6 ym20, ----------------------------------------------------------------

gui,add,text, xm6 ym40, Aimbot RButton

gui,add,text, xm6 ym60, bhop space

gui,add,text, xm6 ym80, Macro F8

gui,add,text, xm6 ym100, Gui hide F4 





;-------------------------------------------------------^dontmovefromtop^
;-----------------------------------------------------triggerbot DO NOT MOVE

Gui, Add, Text, vPrev w500, 
Gui, Add, Text, vCurr w500,
Gui, Add, Text, vNext w500
Gui, Show, x1720 w200  y118, Win
WinSet, Transparent, 150, A
Gui, -Caption +AlwaysOnTop
Gui +LastFound +AlwaysOnTop +ToolWindow

CoordMode, Mouse, Screen 
CoordMode, Pixel, Screen 
color = 0x5455B2,0x5455B1
MidX := A_ScreenWidth / 2 
MidY := A_ScreenHeight / 2 
Sense = 2



~RButton::
{
	While GetKeyState("RButton"){
PixelSearch, TargetX, TargetY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %color%, 5, Fast
If ErrorLevel = 0 
{ 
MoveX := ((TargetX - MidX) / sense) 
MoveY := ((TargetY - MidY) / sense) 
MouseMove, MoveX, MoveY,, R 
}
}
}
return

End::
exitapp
return

;-----------------------------------------------------macro
$F8::
Send, {f}
Sleep 100
Send, {LButton}
Return

;-----------------------------------------------------bhop
ALT::Suspend, Toggle
*~$Space::
Sleep 5
Loop
{
GetKeyState, SpaceState, Space, P
If SpaceState = U
break
Sleep 20
Send, {Blind}{Space}
}
Return

;-----------------------------------------toggle gui
return 

F4::

	Toggle := !Toggle

	If Toggle

		Gui, Show, Hide

	else

		Gui, Show

Return

;---------------------------------------------------Bad-Legit-Triggerbot
#NoEnv
Threshold = 20
;stop peepin at my scripts you filthy weeb
*~$t::
MouseGetPos, MouseX, MouseY
PixelGetColor, Color1, (MouseX+2), (MouseY+2)
StringSplit, Colorz, Color1
Color1B = 0x%Colorz3%%Colorz4%
Color1G = 0x%Colorz5%%Colorz6%
Color1R = 0x%Colorz7%%Colorz8%
Color1B += 0
Color1G += 0
Color1R += 0

while (GetKeyState("F87", "F93"))
    {
        BlockInput, MouseMove
        sleep 1
        MouseGetPos, MouseX, MouseY
        PixelGetColor, Color2, (MouseX+2), (MouseY+2)
        StringSplit, Colorz, Color2
        Color2B = 0x%Colorz3%%Colorz4%
        Color2G = 0x%Colorz5%%Colorz6%
        Color2R = 0x%Colorz7%%Colorz8%
        Color2B += 0
        Color2G += 0
        Color2R += 0
        if (Color1R > (Color2R + Threshold)) or (Color1R < (Color2R - Threshold)) or (Color1G > (Color2G + Threshold)) or (Color1G < (Color2G - Threshold)) or (Color1B > (Color2B + Threshold)) or (Color1B < (Color2B - Threshold))
            {
                sleep 500
                send {LButton}
            }
    }
BlockInput, MouseMoveOff
Return

exitapp
return



;------------------------------------------------------Bad-End
Z::ExitApp
;-----------------------------------3/30/2017--------------------------------
;-----------------------------------Detection status - undetected------------



