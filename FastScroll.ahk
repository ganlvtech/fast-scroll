#Requires AutoHotkey v2.0

GroupAdd("exclude_window", "ahk_class UnityContainerWndClass")
GroupAdd("exclude_window", "ahk_class UnityWndClass")
GroupAdd("exclude_window", "ahk_class GHOST_WindowClass")
GroupAdd("exclude_window", "ahk_class Photoshop")
GroupAdd("exclude_window", "ahk_class UnrealWindow")
#HotIf !WinActive("ahk_group exclude_window")

Scrolled := False

RButton & WheelDown::
{
    global Scrolled
    Scrolled := True
    Send("{Blind}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}")
}

RButton & WheelUp::
{
    global Scrolled
    Scrolled := True
    Send("{Blind}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}")
}

RButton::
{
    global Scrolled
    Scrolled := False
}

$*RButton up::
{
    global Scrolled
    If (!Scrolled)
    {
        Send("{Blind}{RButton}")
    }
}
