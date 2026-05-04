# Laeb kõik funktsioonid Public kataloogist, et need oleksid mooduli osana kättesaadavad ja ekspordib need, mida soovid kasutajatele pakkuda.
$publicFunctions = Get-ChildItem -Path "$PSScriptRoot\Public\*.ps1"

foreach ($file in $publicFunctions) {
    . $file.FullName
}

# Eksporti funktsioonid, mida soovid mooduli kasutajatele kättesaadavaks teha
Export-ModuleMember -Function Invoke-GenerateFiles