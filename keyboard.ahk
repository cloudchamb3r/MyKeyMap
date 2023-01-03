#SingleInstance, force
#InstallKeybdHook
I_Icon = %A_WorkingDir%/keyboard.png
IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%


CapsLock & j:: 
    Send, {Left}
    return

CapsLock & i::
    Send,  {Up}
    return 

CapsLock & k::
    Send, {Down}
    return

CapsLock & l::
    Send, {Right}
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

