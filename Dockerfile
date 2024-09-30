# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set the maintainer
LABEL maintainer="dheeman.das@pwc.com"

# Set up environment variable
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && \
    apt-get install -y \
    curl \
    vim \
    git \
    ca-certificates \
    && apt-get clean

# Default command
CMD ["/bin/bash"]
