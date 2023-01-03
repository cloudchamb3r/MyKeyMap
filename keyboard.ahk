#SingleInstance, force
#InstallKeybdHook
I_Icon = %A_WorkingDir%/keyboard.png
IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%

RemapKey(BindKey)
{
    if GetKeyState("Shift", "p") And GetKeyState("Ctrl", "p") {
        Send, ^+{%BindKey%}
        return
    }
    else if GetKeyState("Shift", "p") {
        Send, +{%BindKey%}
        return
    }
    else if  GetKeyState("Ctrl", "p") {
        Send, ^{%BindKey%}
        return
    }
    Send, {%BindKey%}
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
