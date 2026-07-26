@echo off
REM Requires SONAR_TOKEN to be set in the environment (never commit tokens).
if "%SONAR_TOKEN%"=="" (
  echo ERROR: SONAR_TOKEN environment variable is not set.
  exit /b 1
)

dotnet sonarscanner begin /o:"nikethbandari" /k:"nikethbandari_nb" /d:sonar.host.url="https://sonarcloud.io" /d:sonar.token="%SONAR_TOKEN%"
dotnet build
dotnet sonarscanner end /d:sonar.token="%SONAR_TOKEN%"
