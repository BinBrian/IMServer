aux_source_directory(. SEVICE_SRC_FILES)

add_library(
    libservice STATIC ${SEVICE_SRC_FILES}
)

# target_include_directories(
#     libservice
#     PUBLIC
#     ${MYSQL_INCLUDE_DIR}
# )

target_link_libraries(libservice
    libmyredis
    libmodel
)