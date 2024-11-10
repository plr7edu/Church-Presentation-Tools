; Define the task name and folder
taskName := "Admin-Kill-Church-Presentation-Unified-Remote"
taskFolder := "\SkipUAC\"

; Run the scheduled task and open minimized
Run, schtasks /run /tn %taskFolder%%taskName%,, Min
