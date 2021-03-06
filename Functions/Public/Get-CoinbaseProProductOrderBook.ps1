function Get-CoinbaseProProductOrderBook {
    Param(
        [Parameter(Mandatory=$false)] $APIKey,
        [Parameter(Mandatory=$false)] $APISecret,
        [Parameter(Mandatory=$false)] $APIPhrase,  
        [parameter()][ValidateSet("1","2","3")]$level = 1,
        [parameter(Mandatory=$true)][ValidateScript({ Test-Product $_ })]$ProductID,
        [parameter()] [switch] $SandboxAPI
    )

    $api = Get-BlankAPI -SandboxApi:$SandboxAPI 
    $api.key = "$APIKey"
    $api.secret = "$APISecret"
    $api.passphrase = "$APIPhrase"

    $ProductID = $ProductID.toLower()

    $api.url = "/products/$ProductID/book"
    $api.method = 'GET'
    if ($Level) {$api.url += "?level=$level"}
    $response = Invoke-CoinbaseProRequest $api

    Write-Output $response
}