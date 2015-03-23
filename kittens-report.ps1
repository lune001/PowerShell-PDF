#
# This sample script creates a custom report
#

Add-Type -Path “$PSScriptRoot\itextsharp.dll”
Import-Module "$PSScriptRoot\PDF.psm1"

$pdf = New-Object iTextSharp.text.Document
Create-PDF -Document $pdf -File "$PSScriptRoot\kittens-report.pdf" -TopMargin 20 -BottomMargin 20 -LeftMargin 20 -RightMargin 20 -Author "Patrick"
$pdf.Open()
Add-Title -Document $pdf -Text "Report about kittens" -Color "magenta" -Centered
Add-Text -Document $pdf -Text "Meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow"
Add-Image -Document $pdf -File "$PSScriptRoot\kitten1.jpg"
Add-Table -Document $pdf -Dataset @("Name", "Mittens", "Age", "1.5", "Fur color", "Black and white", "Favorite toy", "String") -Cols 2 -Centered
Add-Image -Document $pdf -File "$PSScriptRoot\kitten2.jpg"
Add-Table -Document $pdf -Dataset @("Name", "Achilles", "Age", "2", "Fur color", "Grey", "Favorite toy", "Shoes") -Cols 2 -Centered
Add-Text -Document $pdf -Text "Meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow"
$pdf.Close()
