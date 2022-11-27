#Crea un script que permeti filtrar per tipus de ports oberts (TCP, UDP o tots dos al mateix temps)
clear
'PUERTOS ABIERTOS'
'Selecciona el tipo de puerto a filtrar'
'1 - puertos TCP'
'2 - puertos UDP'
'3 - Puertos TCP i UDP'
$tipo = Read-Host -Prompt 'Indica el numero'
if ($tipo -eq 1){
'Puertos TCP'
Get-NetTCPConnection -State Listen,Established
''
}
if ($tipo -eq 2){
'Puertos UDP'
Get-NetUDPEndpoint -LocalAddress 0.0.0.0 | ft Localport,OwningProcess
}
''
if ($tipo -eq 3){
'Puertos TCP'
Get-NetTCPConnection -State Listen,Established
'';'Puertos UDP'
Get-NetUDPEndpoint -LocalAddress 0.0.0.0 | ft Localport,OwningProcess
}
