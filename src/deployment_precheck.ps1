# 註解

#Python          PowerShell
#name            $name
#==              -eq
#!=              -ne
#>               -gt
#<               -lt
#print()         Write-Host

$hostname = $env:COMPUTERNAME #電腦名稱
$os = Get-CimInstance Win32_OperatingSystem #系統OS資料
$osC = $os.Caption # OS類型
$osV = $os.Version # OS版本
$computer = Get-CimInstance Win32_ComputerSystem #電腦資料
$mem = $computer.TotalPhysicalMemory / 1GB #取得電腦實體記憶體量(Byte)
$mem = [math]::Round($mem,2) # 小數點後兩位
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'" #取得C槽磁碟資料
$dID = $disk.DeviceID #磁碟編號
$dS = $disk.Size / 1GB #磁碟總容量
$dS = [math]::Round($dS,2) # 小數點後兩位
$dF = $disk.FreeSpace / 1GB #磁碟剩餘容量
$dF =[math]::Round($dF,2) # 小數點後兩位

Write-Host "=== Deployment Pre-check ==="
Write-Host "Hostname: $hostname"
Write-Host "OS: $osC"
Write-Host "Version: $osV"
Write-Host "RAM: $mem"
Write-Host "Disk C: $dID"
Write-Host "disk Size: $dS"
Write-Host "disk FreeSpace: $dF"
if ($dF -lt 10) {
    Write-Host "disk FreeSpace Status: FAIL"
}
elseif ($dF -le 20){
    Write-Host "disk FreeSpace Status: WARN"
}
else{
    Write-Host "disk FreeSpace Status: PASS"
}
