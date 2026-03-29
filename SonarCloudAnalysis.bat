dotnet sonarscanner begin  /o:"nikethbandari"  /k:"nikethbandari_nb"   /d:sonar.host.url="https://sonarcloud.io"  /d:sonar.token="5c781ae902ef18c9dc85a20d1d49cdfb44adae65"
dotnet build
dotnet sonarscanner end /d:sonar.token="5c781ae902ef18c9dc85a20d1d49cdfb44adae65"