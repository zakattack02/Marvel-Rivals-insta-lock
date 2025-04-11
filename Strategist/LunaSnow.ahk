; AutoElevate.ahk
; Script for Luna Snow

if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"  ; Re-run the script as admin
    ExitApp
}

; Your main script logic starts below
SetTimer, ExitScript, -8000

startTime := A_TickCount

while ((A_TickCount - startTime) < 8000)
{
    Click, 2862,587  ; Category
    Sleep, 100

    Click, 2280,263  ; Luna Snow
    Sleep, 100

    Click, 2686,967  ; Confirm
    Sleep, 100
}

ExitApp

ExitScript:
ExitApp
return#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%