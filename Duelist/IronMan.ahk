; AutoElevate.ahk
; Script for Iron Man

if !A_IsAdmin {
    Run("*RunAs " A_ScriptFullPath)
    ExitApp
}

; Your main script logic starts below
SetTimer(ExitScript, -3000)

startTime := A_TickCount

while (A_TickCount - startTime < 3000) {
    Click(2808, 486) ; Category
    Sleep(10)

    Click(2612, 371) ; Iron Man
    Sleep(10)

    Click(2686, 967) ; Confirm
    Sleep(10)
}

ExitApp()