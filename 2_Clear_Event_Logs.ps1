# List available event logs
Get-EventLog -List

# Specify the event log(s) you want to clear
$eventLogs = @(
    "Application",
    "Security",
    "System"
)

# Clear the specified event logs
foreach ($log in $eventLogs) {
    Write-Host "Clearing $log event log..."
    Clear-EventLog -LogName $log
}

Write-Host "Event logs cleared successfully."
