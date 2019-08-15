using Namespace System.Runtime.Serialization.Json

Add-Type -Path .\Spell.cs -ReferencedAssemblies System.Runtime.Serialization.Json.dll, System.Runtime.Serialization.dll, netstandard.dll, System.ServiceModel.Web.dll

[lmissel.Spell] $frostShock = [lmissel.Spell]::new()
$frostShock.cast = "Instance"
$frostShock.cooldown = "6 sec cooldown"
$frostShock.description = "Instantly shocks an enemy with frost..."
$frostShock.Id = 9999

ConvertTo-JsonString -InputObject $frostShock