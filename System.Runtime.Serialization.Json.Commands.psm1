using namespace System.Runtime.Serialization.Json

function ConvertFrom-JsonString
{
    param(
        [String] $JsonString,
        [Type] $Type = 'System.Object'
    )
    
    [DataContractJsonSerializer] $DataContractJsonSerializer = [DataContractJsonSerializer]::new($Type)
    [System.IO.MemoryStream] $MemoryStream = [System.IO.MemoryStream]::new([System.Text.ASCIIEncoding]::ASCII.GetBytes($jsonString))
    $DataContractJsonSerializer.ReadObject($MemoryStream)
}

function ConvertTo-JsonString
{
    param(
        [Object] $InputObject
    )

    [DataContractJsonSerializer] $DataContractJsonSerializer = [DataContractJsonSerializer]::new($InputObject.GetType())
    [System.IO.MemoryStream] $MemoryStream = [System.IO.MemoryStream]::new()
    $DataContractJsonSerializer.WriteObject($MemoryStream, $InputObject)

    $MemoryStream.Position = 0;
    [System.IO.StreamReader] $StreamReader = [System.IO.StreamReader]::new($MemoryStream)
    $StreamReader.ReadToEnd()
}
