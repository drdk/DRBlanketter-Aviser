$jdbc="apxdbtstpack.lx.dr.dk:1596/apx1tst";
$DbUser="xxblanket";
$DbName="APX1TST";
$DbFile="$($env:Temp)\$($DbName)_$($DbUser).txt";

Write-Output "$($env:Temp)";
Write-Output "$($DbFile)";

if (Test-Path "$($DbFile)") {
    $dbpwds = Get-Content "$DbFile" | ConvertTo-SecureString;
    $dbpwd = (New-Object PSCredential "$DbUser",$dbpwds).GetNetworkCredential().Password;
} else {
    $cred=Get-Credential -username $DbUser -Message 'Angiv password til database skema $DbUser';
    if ((Read-Host -Prompt 'Gem password ? Y/N ') -eq 'Y') {
        $cred.Password | ConvertFrom-SecureString | Set-Content "$DbFile";
    }
    $dbpwd =$cred.GetNetworkCredential().Password;
}

#Write-Output $dbpwd
sql $DbUser/$dbpwd`@$jdbc;
