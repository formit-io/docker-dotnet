# docker-dotnet

## Local Build

### dotnet-core 3.1
```shell
docker build -t "dotnet-core:3.1-local" --build-arg BASE_REPO="mcr.microsoft.com/dotnet/core" --build-arg BASE_TAG="3.1" .
```