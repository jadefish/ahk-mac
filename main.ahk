#NoEnv 
#Warn
#MaxHotkeysPerInterval 200

SendMode Input
SetWorkingDir %A_ScriptDir%

; Configurable variables:
scrollAmount := 3

; Disable keys:
LWin::return
RWin::return
Insert::return

; ⌘+Tab:
LWin & Tab::AltTab
RWin & Tab::AltTab

; Horizontal scrolling:
+WheelUp::HorizontalScroll(scrollAmount, 0)
+WheelDown::HorizontalScroll(scrollAmount, 1)

; Functions:
HorizontalScroll(amount, direction) {
	ControlGetFocus fcontrol, A

	Loop %amount% {
		PostMessage 0x114, direction, 0, %fcontrol%, A
	}
}
