; Define the path to your application
appPath := "C:\Program Files (x86)\ATNSOFT Key Manager\keymanager.exe" -minimized

; Run the application as administrator
Run, *RunAs %appPath%,, Min
