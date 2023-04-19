# Restaura e copia os arquivos do projeto:
FROM       mcr.microsoft.com/dotnet/sdk:7.0 AS base-env
COPY       . .
RUN        dotnet restore

# Executa os testes de unidade:
FROM       mcr.microsoft.com/dotnet/sdk:7.0 AS test-env
WORKDIR    /tests
COPY       --from=base-env ./tests .
RUN        dotnet test tests.csproj

# Publica o projeto Web:
FROM       mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR    /app
COPY       --from=base-env ./web .
RUN        dotnet publish web.csproj -c Release -o out

# Copia a pasta do projeto web publicado e roda a aplicação web:
FROM       mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR    /app
COPY       --from=build-env /app/out .
ENTRYPOINT ["dotnet", "web.dll"]
