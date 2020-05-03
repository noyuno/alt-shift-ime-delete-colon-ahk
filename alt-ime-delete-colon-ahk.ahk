; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
; 
; Delete -> BackSpace
; Alt+Delete -> Delete
; : -> ;
; ; -> :
;
; Original:     the6th   https://github.com/the6th/alt-ime-ahk
; Original:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; swap colon and semi-colon
$`;::Send `:
$+`;::Send `;

$^`;::Send ^`:
$^+`;::Send ^`;

$!`;::Send !`:
$!+`;::Send !`;

$^!`;::Send ^!`:
$^!+`;::Send ^!`;

; Delete => BackSpace
; Alt+Delete => Delete

$Delete::Send {BackSpace}
; explorer.exeでファイル削除ができるようにする
$!Delete::
    IfWinActive ahk_class CabinetWClass ; explorer
    {
        ; The control retrieved by this command is the one that has keyboard focus
        ControlGetFocus, FocusedControl, A  ; A means the active window
        ; MsgBox %FocusedControl%
        If FocusedControl contains DirectUIHWND,SysListView
             SendInput, {AppsKey}d
        else
            Send, {delete}
    }
    else
        Send, {delete}
return

$^Delete::Send ^{BackSpace}
$^!Delete::Send ^{Delete}

$+Delete::Send +{BackSpace}
$+!Delete::
    IfWinActive ahk_class CabinetWClass ; explorer
    {
        ; The control retrieved by this command is the one that has keyboard focus
        ControlGetFocus, FocusedControl, A  ; A means the active window
        ; MsgBox %FocusedControl%
        If FocusedControl contains DirectUIHWND,SysListView
             SendInput, {AppsKey}+d
        else
            Send, +{delete}
    }
    else
        Send, +{delete}
return

$+^Delete::Send +^{BackSpace}
$+^!Delete::Send +^{Delete}

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

; 左 Alt 空打ちで IME を OFF
LAlt up::
    if (A_PriorHotkey == "*~LAlt")
    {
        IME_SET(0)
    }
    Return

; 右 Alt 空打ちで IME を ON
RAlt up::
    if (A_PriorHotkey == "*~RAlt")
    {
        IME_SET(1)
    }
    Return
