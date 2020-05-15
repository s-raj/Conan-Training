#From the build directory
mkdir build
cd build
conan install ..

#Consume conan in release mode
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
bin/timer

#searching some libraries
conan search
conan search zlib/1.2.11@ 

#Consume conan in debug mode
conan install .. -s build_type=Debug
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
bin/timer
conan search zlib/1.2.11@ 

#creates graphical view 
conan info .. --graph=info.html
conan search zlib/1.2.11@ --table=file.html
