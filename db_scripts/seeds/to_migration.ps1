#Pegar o diretório atual do script
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo de saida com todos os slq
$outputFile = Join-Path -Path $scriptDir -ChildPath "migration.sql"

#Verificar se o arquivo de saída já existe e deletar se necessário
if (Test-Path -Path $outputFile) {
    Remove-Item -Path $outputFile -Force
}

#Pega os conteudos dos arquivos de seed
$seedFiles = Get-ChildItem -Path $scriptDir -Filter "*.sql" -File | Sort-Object Name

#Concatenar o conteúdo dos arquivos de seed e salvar no arquivo de saída
foreach ($file in $seedFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os arquivos de seed foram concatenados em $outputFile"