# Define the folder name
$folderName = "SkipUAC"

# Define the task names and XML file paths
$task1Name = "Admin-Kill-Church-Presentation-Unified-Remote"
$task2Name = "KeyManager-Minimized"
$task3Name = "Admin-WindowManager-Minimized-VD1-Powerpoint"

$task1Path = ".\$task1Name.xml"
$task2Path = ".\$task2Name.xml"
$task3Path = ".\$task3Name.xml"

# Create the folder in Task Scheduler if it doesn't exist
$folderExists = schtasks /Query /TN "\$folderName" 2>&1 | findstr /C:"ERROR" 
if ($folderExists) {
    schtasks /CreateFolder /TN "\$folderName"
}

# Import the tasks into the specified folder
schtasks /Create /TN "\$folderName\$task1Name" /XML $task1Path /F
schtasks /Create /TN "\$folderName\$task2Name" /XML $task2Path /F
schtasks /Create /TN "\$folderName\$task3Name" /XML $task3Path /F

# Confirmation message
Write-Host "Tasks have been successfully imported into the $folderName folder."
