; AutoElevate.ahk
; Script for Magneto

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
    Click, 2750,389  ; Category
    Sleep, 100

    Click, 2226,357  ; Magneto
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