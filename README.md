# docker-dotnet


## dotnet-core 3.1

### Local Build
```shell
docker build -t "dotnet-core:3.1-local" --build-arg BASE_REPO="mcr.microsoft.com/dotnet/core" --build-arg BASE_TAG="3.1" .
```

### Release

#### 
```shell
git tag 3.1-debian-[ver]
git push --tags
```