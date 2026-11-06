$colString = "abcdefgh"
function Get-ColumnLetter{
    param($number)
    $letter = $colString[$number]
    return $letter
}

$letter = Get-ColumnLetter -number 0

function Get-RandomSquare{

    $randomRow = Get-Random -Minimum 1 -Maximum 9
    $randomColNumber = Get-Random -Minimum 0 -Maximum 8
    $randomCol = $colString[$randomColNumber]
    $newCorrectPiece = "$randomCol$randomRow"

    return @{row = $randomRow; col=$randomCol; piece=$newCorrectPiece}
}

$square = Get-RandomSquare