; AutoElevate.ahk
; Script for Mister Fantastic

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

    Send("{WheelDown}")
    Sleep(10)

    Click(2828, 849) ; Mister Fantastic
    Sleep(10)

    Click(2686, 967) ; Confirm
    Sleep(10)
}

ExitApp()