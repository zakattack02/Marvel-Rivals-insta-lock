; AutoElevate.ahk
; Script for The Thing

if !A_IsAdmin {
    Run("*RunAs " A_ScriptFullPath)
    ExitApp
}

; Your main script logic starts below
SetTimer(ExitScript, -3000)

startTime := A_TickCount

while (A_TickCount - startTime < 3000) {
    Click(2750, 389)  ; Category
    Sleep(10)

    Click(2352, 425)  ; The Thing
    Sleep(10)

    Click(2686, 967)  ; Confirm
    Sleep(10)
}

ExitApp()

ExitScript(*) {
    ExitApp()
}