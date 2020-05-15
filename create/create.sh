conan new hello/0.1
conan create . user/testing
conan search
conan search hello/0.1@user/testing
conan create . user/testing -s build_type=Debug
conan search hello/0.1@user/testing

