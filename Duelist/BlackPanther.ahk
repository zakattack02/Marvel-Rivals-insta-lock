; AutoElevate.ahk
; Script for Black Panther

if !A_IsAdmin {
    Run("*RunAs", A_ScriptFullPath) ; Re-run the script as admin
    ExitApp
}

; Your main script logic starts below
SetTimer(ExitScript, -3000)

startTime := A_TickCount

while (A_TickCount - startTime < 3000) {
    Click(2808, 486) ; Category
    Sleep(100)

    Click(2266, 261) ; Black Panther
    Sleep(100)

    Click(2686, 967) ; Confirm
    Sleep(100)
}

ExitApp()

ExitScript(*) {
    ExitApp()
}