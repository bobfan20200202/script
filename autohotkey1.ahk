; Copyright (c) 2020, Bob Fan. All rights reserved.
; DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
;
; This code is free software; you can redistribute it and/or modify it
; under the terms of the GNU General Public License version 2 only, as
; published by the Free Software Foundation.  
;
; This code is distributed in the hope that it will be useful, but WITHOUT
; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
; version 2 for more details (a copy is included in the LICENSE file that
; accompanied this code).
;
; You should have received a copy of the GNU General Public License version
; 2 along with this work; if not, write to the Free Software Foundation,
; Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.


;https://www.autohotkey.com/docs/commands/Send.htm

^u::
send, {Home}
return

^i::
send, {End}
return

;Control+Alt+N  //open a new one or active the existing one
^!n::
Run Notepad++
return

^p::
IfWinExist MINGW64:/
	WinActivate
else
    Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash"
return


;Win+Z 
;#z::Run https://github.com/bobfan20200202/script


