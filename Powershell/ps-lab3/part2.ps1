get-wmiobject -class win32_product -filter "vendor!='Microsoft Corporation'" | sort InstallDate | format-table -autosize @{n="Installed On";
    e={([datetime]($_.installdate.substring(0,4) + " " + 
    $_.installdate.substring(4,2) + " " + 
    $_.installdate.substring(6,2))).ToString("ddd MMM,dd,yyyy")}}, Vendor, Name, Version

get-wmiobject -class win32_product | ? Vendor -NotMatch "Microsoft Corporation" | sort InstallDate | format-table -autosize @{n="Installed On";
    e={([datetime]($_.installdate.substring(0,4) + " " + 
    $_.installdate.substring(4,2) + " " + 
    $_.installdate.substring(6,2))).ToString("ddd MMM,dd,yyyy")}}, Vendor, Name, Version