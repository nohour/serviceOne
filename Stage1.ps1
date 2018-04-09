Param($segment)

#Read json file
$json = Get-Content -Path "$PSScriptRoot\params.json"
$hashtable = $json| ConvertFrom-Json
$param = $hashtable.segments | Where {$_.segment -like $segment}

$output = "Running test run for Env {0} IP segment is {1} SubnetMaskIp for all is {2}" -f $param.segment, $param.ipSegment, $hashtable.CommonNetParams.SubnetMaskIp
Write-Host $output