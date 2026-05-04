function Invoke-GenerateFiles {
    <#
    .SYNOPSIS
        Genereerib juhuslikke faile vastavalt määratud arvule.
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [int]$Amount
    )

    process {
        # Põhjalikud nimekomponendid, mida kasutatakse failinimede genereerimisel
        $baseNames = @(
            "test", "data", "file", "sample", "example", "info", "temp", "output", "doc", "script",
            "aruanne", "nimekiri", "pilt", "andmed", "seaded", "proov", "tekst", "tulemus", "väärtus", "kasutaja"
        )

        # Faililaiendid, mida kasutatakse failide genereerimisel
        $extensions = @(
            "txt", "pdf", "docx", "xlsx", "jpg", "png", "zip", "mp4", "csv", "json",
            "html", "css", "js", "py", "sql", "xml", "log", "md", "bak", "config"
        )

        $targetFolder = "Genereeritud_Failid"

        # Kontrolli, kas sihtkaust eksisteerib, ja loo see vajadusel
        if (-not (Test-Path -Path $targetFolder)) {
            New-Item -ItemType Directory -Path $targetFolder | Out-Null
            Write-Host "Loodi uus kaust: $targetFolder" -ForegroundColor Cyan
        }

        Write-Host "Alustan $Amount faili genereerimist..." -ForegroundColor Yellow

        for ($i = 1; $i -le $Amount; $i++) {
            $randomName = Get-Random -InputObject $baseNames
            $randomExt = Get-Random -InputObject $extensions
            # Lisame failinimele juhusliku numbri, et vältida nimekonflikte
            $randomID = Get-Random -Minimum 1000 -Maximum 9999
            
            $fileName = "${randomName}_${randomID}.${randomExt}"
            $filePath = Join-Path -Path $targetFolder -ChildPath $fileName

            New-Item -ItemType File -Path $filePath -Force | Out-Null
        }

        Write-Host "Tore! $Amount faili loodud kausta '$targetFolder'." -ForegroundColor Green
    }
}
