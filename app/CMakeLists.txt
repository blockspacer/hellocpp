cmake_minimum_required(VERSION 2.8.12)
 project(app)

 add_definitions("-std=c++11")

 include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
 conan_basic_setup()

 add_executable(app main.cpp connection_manager.cpp connection.cpp mime_types.cpp reply.cpp request_handler.cpp request_parser.cpp server.cpp)
 target_link_libraries(main ${CONAN_LIBS})
