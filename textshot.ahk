#NoEnv
SetWorkingDir %A_ScriptDir%

; Bind the script to Ctrl + Alt + T; modify as needed
^!t::Run .\venv\Scripts\pythonw.exe textshot.py eng+chi_sim ;Simplified Chinese
;^!te::Run .\venv\Scripts\pythonw.exe textshot.py eng
; Run Python w/o a window in a virtual environment in .venv
; Modify the path to the interpreter as needed
; return
