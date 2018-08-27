#NoEnv
#SingleInstance, force
#InstallKeybdHook
SetWinDelay 0
SetBatchLines, -1
SetControlDelay, 0
SetDefaultMouseSpeed, 0
SetMouseDelay, -1
SendMode Input
#KeyHistory 0
ListLines, off
Process, Priority, , A
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
#Include %A_ScriptDir%\Include.ahk

SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79
GuiHeight := 480
GuiWidth := 90
TaskBarHeight := 40
ResDir := DirAscend(A_ScriptDir) "\Res"
GuiTitle := " "
MouseGetPos, MouseX, MouseY

Menu, Tray, Icon, %ResDir%\forsenLauncher.ico

Gui, Add, Picture, w64 gLaunchScriptFag, %ResDir%\forsenE.ico
Gui, Add, Text, wp center, ScriptFag
Gui, Add, Picture, w64 gLaunchBoxy, %ResDir%\forsenBoxE.ico
Gui, Add, Text, wp center, Boxy
Gui, Add, Picture, w64 gLaunchFantasyCounter, %ResDir%\forsenCard.ico
Gui, Add, Text, wp center, Fantasy
Gui, Add, Picture, w64 gLaunchYoutubeDL, %ResDir%\forsenDL.ico
Gui, Add, Text, wp center, YoutubeDL
Gui, Add, Picture, w64 gReload, %ResDir%\forsenLauncher.ico
Gui, Add, Text, wp center, This

Gui, -MaximizeBox -MinimizeBox -Caption +ToolWindow +LastFound

WinGet, GuiID, ID
Gui, Show,% "x" MouseX-GuiWidth/2 " y" MouseY-GuiHeight/2
MoveGuiToBounds(1,1)
SetTimer, Tick, 50
Return

Tick:
ifWinNotActive ahk_id %GuiID%
	ExitApp
Return

GuiClose:
ExitApp
Return

LaunchScriptFag:
Run, "C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\ScriptFag\ScriptFag.ahk", C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\ScriptFag\
ExitApp
Return

LaunchBoxy:
Run, "C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\Boxy\Boxy.ahk", C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\Boxy\
ExitApp
Return

LaunchFantasyCounter:
Run, "C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\FantasyCounter\FantasyCounter.ahk", C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\FantasyCounter\
ExitApp
Return

LaunchYoutubeDL:
Run, "C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\YoutubeDL\YTDL_HelperGui.ahk", C:\Users\sampp\Desktop\HNN - BU\AutoHotkey\YoutubeDL\
ExitApp
Return

