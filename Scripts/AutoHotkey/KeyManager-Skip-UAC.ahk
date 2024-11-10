; Define the task name and folder
taskName := "KeyManager-Minimized"
taskFolder := "\SkipUAC\"

; Run the scheduled task and open minimized
Run, schtasks /run /tn %taskFolder%%taskName%,, Min
