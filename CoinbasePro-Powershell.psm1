Get-ChildItem -Path $PSScriptRoot\*.ps1 -Recurse | Foreach-Object{ . $_.FullName }

$FunctionsToExport = @(
    'Get-CoinbaseAccount',
    'Get-CoinbaseAccountHistory',
    'Get-CoinbaseAccountHolds',
    'Get-CoinbaseProducts',
    'Get-CoinbaseCurrencies',
    'Get-CoinbaseTime',
    'Get-CoinbaseFills',
    'Get-CoinbaseOrder',
    'Get-CoinbaseOrders',
    'Get-CoinbaseProductOrderBook',
    'Get-CoinbaseProductTicker',
    'Get-CoinbaseProductTrades',
    'Get-CoinbaseProductStats',
    'New-CoinbaseLimitOrder',
    'New-CoinbaseMarketOrder',
    'New-CoinbaseStopOrder',
    'Stop-CoinbaseOrder',
    'Invoke-CoinbaseRequest',
    'Get-BlankAPI',
    'Get-HMAC'

)

Export-ModuleMember -Function $FunctionsToExport