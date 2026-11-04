$columns =@{}
$columns.Add([char]'a', 1)
$columns.Add([char]'b', 2)
$columns.Add([char]'c', 3)
$columns.Add([char]'d', 4)
$columns.Add([char]'e', 5)
$columns.Add([char]'f', 6)
$columns.Add([char]'g', 7)
$columns.Add([char]'h', 8)
 
$square = "e4"
 
$col = $square[0]
$colConvert = $columns[$square[0]]
$row = [int][string]$square[1]
 
$board = @(
    @('R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'),
    @('P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'),
    @('.', '.', '.', '.', '.', '.', '.', '.'),
    @('.', '.', '.', '.', '.', '.', '.', '.'),
    @('.', '.', '.', '.', '.', '.', '.', '.'),
    @('.', '.', '.', '.', '.', '.', '.', '.'),
    @('p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'),
    @('r', 'n', 'b', 'q', 'k', 'b', 'n', 'r')
)
 
Write-Host "The piece on $col$row is" $board[$row-1][$colConvert-1]
 
for($row = 8; $row -ge 1; $row--){
    for($col = 1; $col -le 8; $col++){
        Write-Host $board[$row-1][$col-1] -NoNewline
        Write-Host " " -NoNewline
    }
    Write-Host
}
 
