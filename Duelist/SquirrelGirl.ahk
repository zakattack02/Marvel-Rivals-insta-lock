; AutoElevate.ahk
; Script for Squirrel Girl

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

    Click(2414, 341) ; Squirrel Girl
    Sleep(10)

    Click(2686, 967) ; Confirm
    Sleep(10)
}

ExitApp()

ExitScript(*) {
    ExitApp()
}