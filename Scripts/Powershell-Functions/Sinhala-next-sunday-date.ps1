# Get the current date
$currentDate = Get-Date

# Calculate the next Sunday
$nextSunday = $currentDate.AddDays(7 - [int]$currentDate.DayOfWeek)

# Define an array of Sinhala month names
$sinhalaMonthNames = @("ජනවාරි", "පෙබරවාරි", "මාර්තු", "අප්‍රේල්", "මැයි", "ජූනි", "ජූලි", "අගෝස්තු", "සැප්තැම්බර්", "ඔක්තෝබර්", "නොවැම්බර්", "දෙසැම්බර්")

# Format the date as "yyyy monthname date"
$formattedDate = "{0} {1} {2}" -f $nextSunday.Year, $sinhalaMonthNames[$nextSunday.Month - 1], $nextSunday.Day

# Output the result
Write-Host "$formattedDate" 

Write-Output "$formattedDate" | Set-Clipboard

