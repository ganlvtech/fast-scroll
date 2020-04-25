RButton & WheelUp::
    Flag = true
    Send, {Blind}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
Return

RButton & WheelDown::
    Flag = true
    Send, {Blind}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
Return

RButton::
    Flag = false
Return

$*RButton up::
    If ! %Flag%
        Send, {Blind}{RButton}
    Return
Return
