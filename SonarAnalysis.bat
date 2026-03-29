dotnet sonarscanner begin /k:"SampleCACISonarProject" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqp_18b1b2d8ab55dee6e109c4a2dd2e5156f5bcbe70"
dotnet build
dotnet sonarscanner end /d:sonar.token="sqp_18b1b2d8ab55dee6e109c4a2dd2e5156f5bcbe70"