cmake_minimum_required(VERSION 3.0)
project(chat)

# 配置编译选项
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -g)
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS_DEBUG "-O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -finline-limit=1000 -DNDEBUG")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# 配置最终的可执行文件输出的路径 
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

if(NOT MUDUO_PATH)
    set(MUDUO_PATH "/home/brian/Downloads/build/release-install-cpp11")
endif()

# ====查找依赖项======
# muduo
find_path(Muduo_INCLUDE_DIR muduo "${MUDUO_PATH}/include")
find_path(Muduo_LIBRARY_DIR libmuduo_net.a "${MUDUO_PATH}/lib")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${Muduo_LIBRARY_DIR})
message(STATUS ${Muduo_INCLUDE_DIR})
message(STATUS ${Muduo_LIBRARY_DIR})

include_directories(${Muduo_INCLUDE_DIR})
find_library(muduo_base muduo_base)
find_library(muduo_net muduo_net)
message(STATUS ${muduo_base})
message(STATUS ${muduo_net})

# hiredis
if(HIREDIS_INCLUDE_DIRS AND HIREDIS_LIBRARIES)
  set(HIREDIS_FIND_QUIETLY TRUE)
else()
  find_path(
    HIREDIS_INCLUDE_DIR
    NAMES hiredis/hiredis.h
    HINTS ${HIREDIS_ROOT_DIR}
    PATH_SUFFIXES include)

  find_library(
    HIREDIS_LIBRARY
    NAMES hiredis
    HINTS ${HIREDIS_ROOT_DIR}
    PATH_SUFFIXES ${CMAKE_INSTALL_LIBDIR})

  set(HIREDIS_INCLUDE_DIRS ${HIREDIS_INCLUDE_DIR})
  set(HIREDIS_LIBRARIES ${HIREDIS_LIBRARY})

  include (FindPackageHandleStandardArgs)
  find_package_handle_standard_args(
    hiredis DEFAULT_MSG HIREDIS_LIBRARY HIREDIS_INCLUDE_DIR)

  mark_as_advanced(HIREDIS_LIBRARY HIREDIS_INCLUDE_DIR)
endif()

# mysql-client
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")   

find_path( MYSQL_INCLUDE_DIR
NAMES "mysql.h"
PATHS "/usr/include/mysql"
      "/usr/local/include/mysql"
      "/usr/mysql/include/mysql" )

find_library( MYSQL_LIBRARY
NAMES "mysqlclient" "mysqlclient_r"
PATHS "/lib/mysql"
      "/lib64/mysql"
      "/usr/lib/mysql"
      "/usr/lib64/mysql"
      "/usr/local/lib/mysql"
      "/usr/local/lib64/mysql"
      "/usr/mysql/lib/mysql"
      "/usr/mysql/lib64/mysql" )

message(STATUS ${MYSQL_INCLUDE_DIR})
message(STATUS ${MYSQL_LIBRARY})
# ======= load subdirectory =========
include_directories(${PROJECT_SOURCE_DIR})

add_subdirectory(model)
add_subdirectory(redis)
add_subdirectory(service)
add_subdirectory(client)
add_subdirectory(server)