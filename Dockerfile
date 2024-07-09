# Dockerfile
FROM alpine:latest

# Install dependencies
RUN apk add --no-cache build-base cmake

# Copy source code
COPY . /TEMPLATE-DEV-CONTAINER

# Build the application
WORKDIR /TEMPLATE-DEV-CONTAINER
RUN mkdir build && cd build && cmake .. && make

# Set entrypoint
ENTRYPOINT ["./build/your
