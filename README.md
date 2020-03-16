# System.Runtime.Serialization.Json.Commands
Dieses PowerShell Module enthält Funktionen mit deren Hilfe Objekte im JSON-Format serialisiert und deserialisiert werden können.

## Voraussetzungen

Um dieses Module nutzen zu können, ist .Net Standard notwendig. Dies sollte bei Windows Systemen standardmäßig zur Verfügung stehen.

## Installation

Kopieren Sie das Module in eins der PowerShell Module Pfade.

## Verwendung

In diesem Beispiel wird gezeigt und erläutert, wie das Module verwendet werden kann.

```powershell
# Importieren des Moduls
Import-Module System.Runtime.Serialization.Json.Commands

# Serialisiert das Objekt
ConvertTo-JsonString -InputObject $Input

# Deserialisiert den String
ConvertFrom-JsonString -JsonString '{"cast":"Instance","cooldown":"6 sec cooldown","description":"Instantly shocks an enemy with frost...","icon":null,"id":9999,"name":
null,"powerCost":null,"range":null}' -Type 'lmissel.Spell'

```

## Hinweis

Das Module verwendet Klassen des Namepaces [System.Runtime.Serialization.Json], mit denen die Umsetzung vereinfacht wird.
