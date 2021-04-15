#!/bin/bash -e

echo ".NET Core version $(dotnet --version)"

exec "$@"