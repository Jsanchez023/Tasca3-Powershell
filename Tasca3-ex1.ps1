#Munta un fitxer iso i copia algun fitxer d'aquesta iso a una ruta de destí que s'ha de demanar durant l'execució. 
'Para montar la iso i copiar algun archivo de esta introduzca los siguientes datos:'
$rutaiso = Read-Host -Prompt 'Ruta absoluta de la iso a montar'
$archivoiso = Read-Host -Prompt 'Archivo a copiar'
$archivoiso = 'E:\'+$archivoiso
$destinoiso = Read-Host -Prompt 'ruta absoluta de la carpeta donde copiar el archivo'

Mount-DiskImage -ImagePath $rutaiso
Copy-Item -Path $archivoiso -Destination $destinoiso