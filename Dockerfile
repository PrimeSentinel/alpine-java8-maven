FROM maven:3.5.2-jdk-8-alpine
RUN apk update

# Install essentials
RUN apk add --no-cache make git zip curl wget
RUN apk add ca-certificates

# Install cloudfoundry-cli
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
RUN mv cf /usr/local/bin
