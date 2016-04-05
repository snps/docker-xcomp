FROM debian:8
MAINTAINER Felix Glas <felix.glas@gmail.com>

# Install Mingw-W64 C++ compiler and GNU Make
RUN apt-get update && apt-get install -y \
    g++-mingw-w64 \
    make \
    --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add symlink for g++
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/x86_64-w64-mingw32-g++-posix 1

CMD ["/bin/bash"]
