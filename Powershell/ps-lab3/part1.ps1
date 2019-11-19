get-wmiobject -class win32_logicaldisk | ? Size -GT "0" | format-table -AutoSize DeviceID, @{n="Size     ";
    e={[math]::Round($_.Size/1GB,2).ToString()+"GB"}}, 
    @{n="Free Space";e={[math]::Round($_.FreeSpace/1GB,2).ToString()+"GB"}}, ProviderName