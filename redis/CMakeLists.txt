aux_source_directory(. MYREDIS_SRC_FILES)

add_library(
    libmyredis STATIC ${MYREDIS_SRC_FILES}
)

target_include_directories(
    libmyredis
    PUBLIC
    ${HIREDIS_INCLUDE_DIR}
)

target_link_libraries(libmyredis
    ${HIREDIS_LIBRARY}
)