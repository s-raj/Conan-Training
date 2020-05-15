ls
conan install . -g compiler_args
g++ timer.cpp @conanbuildinfo.args -o timer -std=c++11
./timer
