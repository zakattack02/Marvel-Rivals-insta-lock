; AutoElevate.ahk
; Place this at the top of your script

if !A_IsAdmin {
    Run("*RunAs " A_ScriptFullPath)
    ExitApp
}

; Your main script logic starts below
SetTimer(ExitScript, -3000)

startTime := A_TickCount

while (A_TickCount - startTime < 3000)
{
    Click, 2808, 486  ; Category
    Sleep, 100

    Click, 2346,431  ; Black Widow
    Sleep, 100

    Click, 2686,967  ; Confirm
    Sleep, 100
}

ExitApp

ExitScript:
ExitApp
return