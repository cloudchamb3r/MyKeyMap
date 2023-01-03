#SingleInstance, force
#InstallKeybdHook
I_Icon = %A_WorkingDir%/keyboard.png
IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%

RemapKey(BindKey)
{
    Key = {%BindKey%}
    if GetKeyState("Shift", "p") {
        Key = +%Key%
    }
    if  GetKeyState("Ctrl", "p") {
        Key = ^%Key%
    }
    if GetKeyState("Alt", "p") {
        Key = !%Key%
    }    
    Send, %Key%
    return
}


CapsLock & j:: 
    RemapKey("Left")
    return

CapsLock & i::
    RemapKey("Up")
    return

CapsLock & k::
    RemapKey("Down")
    return

CapsLock & l::
    RemapKey("Right")
    return
    

SC138:: ; binding for IME HANGUL
    Send, {RAlt}

^Space::
    if GetKeyState("CapsLock", "T") = 1 {
        SetCapsLockState, Off
    }
    else if GetKeyState("CapsLock", "T") = 0{
        SetCapsLockState, On
    }
    return

CapsLock::
    return
