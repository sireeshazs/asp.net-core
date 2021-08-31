FROM      microsoft/dotnet:3.1-sdk
WORKDIR   /app
COPY      *.csproj ./
RUN       dotnet restore
COPY      . ./
RUN       dotnet publish -c Release -o out