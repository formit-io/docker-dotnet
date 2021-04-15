ARG BASE_REPO
ARG BASE_TAG
FROM ${BASE_REPO}/sdk:${BASE_TAG}

ENV DOTNET_PATH "/root/.dotnet/tools"
ENV PATH "$PATH:${DOTNET_PATH}"

COPY src//*.sh "/bin/"

RUN apt-get update \
    && apt-get install -yq wget curl zip bash jq python python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install awscli \
    && rm -rf ~/.cache/pip/* \
    && dotnet tool install -g Amazon.Lambda.Tools

ENTRYPOINT ["/bin/docker-entrypoint.sh"]
CMD ["/bin/bash"]
