﻿#SingleInstance force

#Include Functions.ahk

A_TrayMenu.Delete()
A_TrayMenu.Add("Exit","ExitApp")
A_TrayMenu.Add("Reload","Reload")
A_TrayMenu.Add("Terminate","Terminate")
A_TrayMenu.Add()
A_TrayMenu.Add("Pause","PauseToggle")
A_TrayMenu.Add("Suspend","SuspendToggle")
A_TrayMenu.Add("Show Gui","GuiShow")
A_TrayMenu.default := "Show Gui"
A_TrayMenu.ClickCount := 1
A_TrayMenu.Check("Pause")
A_TrayMenu.ToggleCheck("Pause")
A_TrayMenu.Check("Suspend")
A_TrayMenu.ToggleCheck("Suspend")

TraySubmenu := MenuCreate()
TraySubmenu.Add("WindowSpy","WindowSpy")
TraySubmenu.Add()
TraySubmenu.Add("Lines","Lines")
TraySubmenu.Add("Variables","Variables")
TraySubmenu.Add("Hotkeys","Hotkeys")
TraySubmenu.Add("KeyHistory","KeyHistory")
TraySubmenu.Add()
TraySubmenu.Add("Edit","Edit")
TraySubmenu.Add("Open Script Folder","OpenScriptFolder")

A_TrayMenu.Add()
A_TrayMenu.Add("Tray Submenu",TraySubmenu)


Terminate(){
	ProcessExist()
	ProcessClose ErrorLevel
}
PauseToggle(){
	Global
	A_TrayMenu.ToggleCheck("Pause")
	Pause -1
	A_TrayMenu.ToggleCheck("Pause")
}
SuspendToggle(){
	t := !t
	A_TrayMenu.ToggleCheck("Suspend")
	Suspend -1
	If !t
	A_TrayMenu.ToggleCheck("Suspend")
}
GuiShow(){
	Gui.Show()
}
Edit(){
	;Run "C:\Program Files\Microsoft VS Code\Code.exe" """"DirAscend(A_ScriptDir)""""
}
OpenScriptFolder(){
	Run "explorer.exe /select, `"" A_ScriptDir "\" A_ScriptName "`""
}
WindowSpy(){
	Run "C:\Program Files\AutoHotkey\WindowSpy.ahk"
}
Lines(){
	ListLines
}
Variables(){
	ListVars
}
Hotkeys(){
	ListHotkeys
}
KeyHistory(){
	KeyHistory
}
