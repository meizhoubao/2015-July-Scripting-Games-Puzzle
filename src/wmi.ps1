# Language: powershell
# Author: Leopard Li
# Date: 2015-7-10

# Before running the script,replace $mycomputername with your computer's name 
gwmi Win32_OperatingSystem -ComputerName $mycomputername | Format-Table @{N='PSComputerName';E={$($_).CSName}},ServicePackMajorVersion,Version,@{N="BIOSSerial";E={$(gwmi Win32_BIOS -ComputerName $_.CSName).SerialNumber}}
