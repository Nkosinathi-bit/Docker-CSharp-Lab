FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY HelloDocker/HelloDocker.csproj HelloDocker/
RUN dotnet restore HelloDocker/HelloDocker.csproj

COPY HelloDocker/ HelloDocker/
RUN dotnet publish HelloDocker/HelloDocker.csproj -c Release -o /app/publish --no-restore /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/runtime:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "HelloDocker.dll"]
