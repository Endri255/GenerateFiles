GenerateFiles - PowerShell Moodul
See on PowerShelli moodul, mis on loodud Pythoni skripti Generate-Files põhjal. Moodul võimaldab genereerida määratud hulgal tühje faile, kasutades juhuslikke baasnimesid ja laiendeid.

Projekti struktuur
GenerateFiles/
├── Public/
│   └── Invoke-GenerateFiles.ps1  # Põhifunktsiooni loogika
├── GenerateFiles.psm1            # Mooduli laadija
├── GenerateFiles.psd1            # Mooduli manifest
└── README.md                     # Projekti dokumentatsioon
Paigaldamine
Mooduli kasutamiseks mõlemas PowerShelli versioonis kopeerige GenerateFiles kaust oma kasutaja profiili moodulite asukohta:

Windows PowerShell (v5.1)
C:\Users\<Kasutaja>\Documents\WindowsPowerShell\Modules\GenerateFiles

PowerShell (v7+)
C:\Users\<Kasutaja>\Documents\PowerShell\Modules\GenerateFiles

Kiire paigaldus skriptiga:

$dest5 = "$HOME\Documents\WindowsPowerShell\Modules\GenerateFiles"
$dest7 = "$HOME\Documents\PowerShell\Modules\GenerateFiles"

New-Item -ItemType Directory -Path $dest5, $dest7 -Force -ErrorAction SilentlyContinue

Copy-Item -Path ".\*" -Destination $dest5 -Recurse -Force
Copy-Item -Path ".\*" -Destination $dest7 -Recurse -Force
Kasutamine
Ava PowerShell.
Laadi moodul (vajadusel):
Import-Module GenerateFiles
Käivita failide genereerimine:
Invoke-GenerateFiles -Amount 15
Skript loob automaatselt kausta nimega Genereeritud_Failid ja tekitab sinna soovitud hulga faile.

Autor
Endri Sinijärv (IT25)