###########################################
###########################################
## Dockerfile to run Mega-Linter ##
###########################################
###########################################

# @not-generated

#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################
#FROM__START
FROM cljkondo/clj-kondo:2021.06.18-alpine as clj-kondo
FROM hadolint/hadolint:latest-alpine as hadolint
FROM ghcr.io/assignuser/chktex-alpine:latest as chktex
FROM yoheimuta/protolint:latest as protolint
FROM ghcr.io/assignuser/lintr-lib:0.2.0 as lintr-lib
FROM ghcr.io/terraform-linters/tflint:latest as tflint
FROM accurics/terrascan:latest as terrascan
FROM alpine/terragrunt:latest as terragrunt
#FROM__END

##################
# Get base image #
##################
FROM python:3.9.6-alpine3.13

#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################
#ARG__START
ARG PWSH_VERSION='latest'
ARG PWSH_DIRECTORY='/opt/microsoft/powershell'
ARG ARM_TTK_NAME='master.zip'
ARG ARM_TTK_URI='https://github.com/Azure/arm-ttk/archive/master.zip'
ARG ARM_TTK_DIRECTORY='/opt/microsoft'
ARG DART_VERSION='2.8.4'
ARG GLIBC_VERSION='2.31-r0'
ARG PSSA_VERSION='latest'
#ARG__END

####################
# Run APK installs #
####################

# APK Packages used by mega-linter core architecture
RUN apk add --update --no-cache \
    bash \
    coreutils \
    curl \
    file \
    gcc \
    git git-lfs\
    go \
    gnupg \
    icu-libs \
    jq \
    krb5-libs \
    libcurl libintl libssl1.1 libstdc++ \
    libffi-dev \
    linux-headers \
    make \
    musl-dev \
    openjdk8 \
    npm \
    nodejs-current \
    py3-setuptools \
    readline-dev \
    ruby-bundler \
    ruby-dev

#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################
#APK__START
RUN apk add --update --no-cache \
                docker \
                openrc \
                lttng-ust-dev \
                zlib \
                zlib-dev \
                go \
                openjdk8 \
                npm \
                nodejs-current \
                perl \
                perl-dev \
                php7 \
                php7-phar \
                php7-json \
                php7-mbstring \
                php-xmlwriter \
                php7-tokenizer \
                php7-ctype \
                php7-curl \
                php7-dom \
                php7-simplexml \
                composer \
                ruby \
                ruby-dev \
                ruby-bundler \
                ruby-rdoc \
                ansible-lint \
                R \
                R-dev \
                R-doc \
                libc-dev \
                libxml2-dev \
                libxml2-utils \
                libgcc
#APK__END

# PATH for golang
ENV GOROOT=/usr/lib/go
ENV GOPATH=/go
# hadolint ignore=DL3044
ENV PATH="$PATH":"$GOROOT"/bin:"$GOPATH"/bin
RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin

#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################
#PIP__START
RUN pip3 install --no-cache-dir --upgrade \
          'cpplint' \
          'cfn-lint' \
          'pylint' \
          'black' \
          'flake8' \
          'isort' \
          'bandit' \
          'mypy' \
          'restructuredtext_lint' \
          'rstcheck' \
          'sphinx<4.0' \
          'rstfmt' \
          'snakemake' \
          'snakefmt' \
          'sqlfluff' \
          'checkov>=2.0.269' \
          'yamllint'
#PIP__END

############################
# Install NPM dependencies #
#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################

# Downgrade npm because from npm@v7, npm install crashes when called from root directory within Dockerfile
RUN npm install npm@latest-6 -g
# Disable package-lock.json to avoid sudden crash. Try to remove later if possible
RUN echo 'package-lock=false' >> .npmrc 
#NPM__START
RUN npm install --no-cache --ignore-scripts \
                sfdx-cli \
                typescript \
                asl-validator \
                @coffeelint/cli \
                jscpd \
                secretlint \
                @secretlint/secretlint-rule-preset-recommend \
                stylelint \
                stylelint-config-standard \
                stylelint-config-sass-guidelines \
                stylelint-scss \
                dockerfilelint \
                editorconfig-checker \
                gherkin-lint \
                graphql-schema-linter \
                npm-groovy-lint \
                htmlhint \
                eslint \
                eslint-config-airbnb \
                eslint-config-prettier \
                eslint-config-standard \
                eslint-plugin-import \
                eslint-plugin-jest \
                eslint-plugin-node \
                eslint-plugin-prettier \
                eslint-plugin-promise \
                eslint-plugin-vue \
                babel-eslint \
                standard@15.0.1 \
                prettier \
                jsonlint \
                eslint eslint-plugin-jsonc \
                v8r \
                eslint-plugin-react \
                markdownlint-cli \
                remark-cli \
                remark-preset-lint-recommended \
                markdown-link-check \
                markdown-table-formatter \
                @stoplight/spectral@5.6.0 \
                cspell \
                sql-lint \
                tekton-lint \
                prettyjson \
                @typescript-eslint/eslint-plugin \
                @typescript-eslint/parser
#NPM__END

# Add node packages to path #
ENV PATH="/node_modules/.bin:${PATH}"

##############################
# Installs ruby dependencies #
#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################

#GEM__START
RUN echo 'gem: --no-document' >> ~/.gemrc && \
    gem install \
          scss_lint \
          puppet-lint \
          rubocop:0.82.0 \
          rubocop-github:0.16.0 \
          rubocop-performance:1.7.1 \
          rubocop-rails:2.5 \
          rubocop-rspec:1.41.0
#GEM__END

#############################################################################################
## @generated by .automation/build.py using descriptor files, please do not update manually ##
#############################################################################################
#OTHER__START
RUN rc-update add docker boot && rc-service docker start || true
# CSHARP installation
RUN wget --tries=5 -q -O dotnet-install.sh https://dot.net/v1/dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --install-dir /usr/share/dotnet -channel Current -version latest

ENV PATH="${PATH}:/root/.dotnet/tools:/usr/share/dotnet"

# GIT installation
RUN git config --global core.autocrlf true

# JAVA installation
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

# PHP installation
RUN wget --tries=5 -q -O phive.phar https://phar.io/releases/phive.phar \
    && wget --tries=5 -q -O phive.phar.asc https://phar.io/releases/phive.phar.asc \
    && PHAR_KEY_ID="0x9D8A98B29B2D5D79" \
    && ( gpg --keyserver keyserver.pgp.com --recv-keys "$PHAR_KEY_ID" \
        || gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$PHAR_KEY_ID" \
        || gpg --keyserver pgp.mit.edu --recv-keys "$PHAR_KEY_ID" \
        || gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$PHAR_KEY_ID" ) \
    && gpg --verify phive.phar.asc phive.phar \
    && chmod +x phive.phar \
    && mv phive.phar /usr/local/bin/phive \
    && rm phive.phar.asc


# POWERSHELL installation
RUN mkdir -p ${PWSH_DIRECTORY} \
    && curl --retry 5 --retry-delay 5 -s https://api.github.com/repos/powershell/powershell/releases/${PWSH_VERSION} \
        | grep browser_download_url \
        | grep linux-alpine-x64 \
        | cut -d '"' -f 4 \
        | xargs -n 1 wget -O - \
        | tar -xzC ${PWSH_DIRECTORY} \
    && ln -sf ${PWSH_DIRECTORY}/pwsh /usr/bin/pwsh


# RUST installation
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# SALESFORCE installation
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"
RUN echo y|sfdx plugins:install sfdx-hardis

# SCALA installation
RUN curl -fLo coursier https://git.io/coursier-cli && \
        chmod +x coursier


# arm-ttk installation
ENV ARM_TTK_PSD1="${ARM_TTK_DIRECTORY}/arm-ttk-master/arm-ttk/arm-ttk.psd1"
RUN curl --retry 5 --retry-delay 5 -sLO "${ARM_TTK_URI}" \
    && unzip "${ARM_TTK_NAME}" -d "${ARM_TTK_DIRECTORY}" \
    && rm "${ARM_TTK_NAME}" \
    && ln -sTf "${ARM_TTK_PSD1}" /usr/bin/arm-ttk \
    && chmod a+x /usr/bin/arm-ttk


# bash-exec installation
RUN printf '#!/bin/bash \n\nif [[ -x "$1" ]]; then exit 0; else echo "Error: File:[$1] is not executable"; exit 1; fi' > /usr/bin/bash-exec \
    && chmod +x /usr/bin/bash-exec


# shellcheck installation
RUN wget -qO- "https://github.com/koalaman/shellcheck/releases/download/stable/shellcheck-stable.linux.x86_64.tar.xz" | tar -xJv \
    && cp "shellcheck-stable/shellcheck" /usr/bin/ \
    && shellcheck --version


# shfmt installation
ENV GO111MODULE=on
RUN go get mvdan.cc/sh/v3/cmd/shfmt

# clj-kondo installation
COPY --from=clj-kondo /bin/clj-kondo /usr/bin/

# dotnet-format installation
RUN /usr/share/dotnet/dotnet tool install -g dotnet-format

# dartanalyzer installation
RUN wget --tries=5 -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget --tries=5 -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk \
    && apk add --no-cache glibc-${GLIBC_VERSION}.apk && rm glibc-${GLIBC_VERSION}.apk \
    && wget --tries=5 https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/sdk/dartsdk-linux-x64-release.zip -O - -q | unzip -q - \
    && chmod +x dart-sdk/bin/dart* \
    && mv dart-sdk/bin/* /usr/bin/ && mv dart-sdk/lib/* /usr/lib/ && mv dart-sdk/include/* /usr/include/ \
    && rm -r dart-sdk/


# hadolint installation
COPY --from=hadolint /bin/hadolint /usr/bin/hadolint

# dotenv-linter installation
RUN wget -q -O - https://raw.githubusercontent.com/dotenv-linter/dotenv-linter/master/install.sh | sh -s

# golangci-lint installation
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh \
    && golangci-lint --version


# revive installation
RUN go get -u github.com/mgechev/revive

# checkstyle installation
RUN CHECKSTYLE_LATEST=$(curl -s https://api.github.com/repos/checkstyle/checkstyle/releases/latest \
        | grep browser_download_url \
        | grep ".jar" \
        | cut -d '"' -f 4) \
    && curl --retry 5 --retry-delay 5 -sSL $CHECKSTYLE_LATEST \
        --output /usr/bin/checkstyle


# ktlint installation
RUN curl --retry 5 --retry-delay 5 -sSLO https://github.com/pinterest/ktlint/releases/download/0.40.0/ktlint && \
    chmod a+x ktlint && \
    mv "ktlint" /usr/bin/


# kubeval installation
RUN wget -q https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz \
    && tar xf kubeval-linux-amd64.tar.gz \
    && cp kubeval /usr/local/bin


# chktex installation
COPY --from=chktex /usr/bin/chktex /usr/bin/
RUN cd ~ && touch .chktexrc

# luacheck installation
RUN wget --tries=5 https://www.lua.org/ftp/lua-5.3.5.tar.gz -O - -q | tar -xzf - \
    && cd lua-5.3.5 \
    && make linux \
    && make install \
    && cd .. && rm -r lua-5.3.5/ \
    && wget --tries=5 https://github.com/cvega/luarocks/archive/v3.3.1-super-linter.tar.gz -O - -q | tar -xzf - \
    && cd luarocks-3.3.1-super-linter \
    && ./configure --with-lua-include=/usr/local/include \
    && make \
    && make -b install \
    && cd .. && rm -r luarocks-3.3.1-super-linter/ \
    && luarocks install luacheck


# perlcritic installation
RUN curl --retry 5 --retry-delay 5 -sL https://cpanmin.us/ | perl - -nq --no-wget Perl::Critic

# phpcs installation
RUN phive --no-progress install phpcs -g --trust-gpg-keys 31C7E470E2138192


# phpstan installation
RUN composer global require phpstan/phpstan \
    && composer global config bin-dir --absolute

ENV PATH="/root/.composer/vendor/bin:$PATH"

# psalm installation
RUN phive --no-progress install psalm -g --trust-gpg-keys 8A03EA3B385DBAA1,12CE0F1D262429A5


# powershell installation
RUN pwsh -c 'Install-Module -Name PSScriptAnalyzer -RequiredVersion ${PSSA_VERSION} -Scope AllUsers -Force'

# protolint installation
COPY --from=protolint /usr/local/bin/protolint /usr/bin/

# lintr installation
COPY --from=lintr-lib /usr/lib/R/library/ /home/r-library
RUN R -e "install.packages(list.dirs('/home/r-library',recursive = FALSE), repos = NULL, type = 'source')"

# raku installation
RUN curl -L https://github.com/nxadm/rakudo-pkg/releases/download/v2020.10-02/rakudo-pkg-Alpine3.12_2020.10-02_x86_64.apk > rakudo-pkg-Alpine3.12_2020.10-02_x86_64.apk \
    && apk add --no-cache --allow-untrusted rakudo-pkg-Alpine3.12_2020.10-02_x86_64.apk \
    && rm rakudo-pkg-Alpine3.12_2020.10-02_x86_64.apk \
    && /opt/rakudo-pkg/bin/add-rakudo-to-path \
    && source /root/.profile \
    && /opt/rakudo-pkg/bin/install-zef-as-user

ENV PATH="~/.raku/bin:/opt/rakudo-pkg/bin:/opt/rakudo-pkg/share/perl6/site/bin:$PATH"

# clippy installation
RUN rustup component add clippy

# sfdx-scanner-apex installation
RUN sfdx plugins:install @salesforce/sfdx-scanner

# sfdx-scanner-aura installation
RUN sfdx plugins:install @salesforce/sfdx-scanner

# sfdx-scanner-lwc installation
RUN sfdx plugins:install @salesforce/sfdx-scanner

# scalafix installation
RUN ./coursier install scalafix --quiet --install-dir /usr/bin

# misspell installation
RUN curl -L -o ./install-misspell.sh https://git.io/misspell \
    && sh ./install-misspell.sh


# tsqllint installation
RUN dotnet tool install --global TSQLLint

# tflint installation
COPY --from=tflint /usr/local/bin/tflint /usr/bin/

# terrascan installation
COPY --from=terrascan /go/bin/terrascan /usr/bin/
RUN terrascan init

# terragrunt installation
COPY --from=terragrunt /usr/local/bin/terragrunt /usr/bin/

# terraform-fmt installation
COPY --from=terragrunt /bin/terraform /usr/bin/

#OTHER__END

######################
# Set the entrypoint #
######################
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

################################
# Installs python dependencies #
################################
COPY megalinter /megalinter
RUN python /megalinter/setup.py install \
    && python /megalinter/setup.py clean --all \
    && rm -rf /var/cache/apk/*

#######################################
# Copy scripts and rules to container #
#######################################
COPY megalinter/descriptors /megalinter-descriptors
COPY TEMPLATES /action/lib/.automation

###########################
# Get the build arguments #
###########################
ARG BUILD_DATE
ARG BUILD_REVISION
ARG BUILD_VERSION

#################################################
# Set ENV values used for debugging the version #
#################################################
ENV BUILD_DATE=$BUILD_DATE \
    BUILD_REVISION=$BUILD_REVISION \
    BUILD_VERSION=$BUILD_VERSION

#FLAVOR__START
ENV MEGALINTER_FLAVOR=all
#FLAVOR__END

#########################################
# Label the instance and set maintainer #
#########################################
LABEL com.github.actions.name="Mega-Linter" \
      com.github.actions.description="The ultimate linters aggregator to make sure your projects are clean" \
      com.github.actions.icon="code" \
      com.github.actions.color="red" \
      maintainer="Nicolas Vuillamy <nicolas.vuillamy@gmail.com>" \
      org.opencontainers.image.created=$BUILD_DATE \
      org.opencontainers.image.revision=$BUILD_REVISION \
      org.opencontainers.image.version=$BUILD_VERSION \
      org.opencontainers.image.authors="Nicolas Vuillamy <nicolas.vuillamy@gmail.com>" \
      org.opencontainers.image.url="https://nvuillam.github.io/mega-linter" \
      org.opencontainers.image.source="https://github.com/nvuillam/mega-linter" \
      org.opencontainers.image.documentation="https://nvuillam.github.io/mega-linter" \
      org.opencontainers.image.vendor="Nicolas Vuillamy" \
      org.opencontainers.image.description="Lint your code base with GitHub Actions"
