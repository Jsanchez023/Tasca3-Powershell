#Comprova amb un script que la connexió TCP és correcta. Mostra un missatge emergent indicant que funciona correctament
$estado = Test-NetConnection google.com -Port 80 -InformationLevel Quiet
clear
If($estado -eq 'True'){
[System.Windows.MessageBox]::Show('La conexion TCP es correcta','Succces')
}
else{
[System.Windows.MessageBox]::Show('No se ha podido realizar la conexion TCP','Error')
}
clear