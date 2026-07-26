@echo off
REM Requires SONAR_TOKEN to be set in the environment (never commit tokens).
if "%SONAR_TOKEN%"=="" (
  echo ERROR: SONAR_TOKEN environment variable is not set.
  exit /b 1
)
if "%SONAR_HOST_URL%"=="" set SONAR_HOST_URL=http://localhost:9000

dotnet sonarscanner begin /k:"SampleCACISonarProject" /d:sonar.host.url="%SONAR_HOST_URL%" /d:sonar.token="%SONAR_TOKEN%"
dotnet build
dotnet sonarscanner end /d:sonar.token="%SONAR_TOKEN%"
