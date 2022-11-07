

aux_source_directory(. MODEL_SRC_FILES)

add_library(
    libmodel STATIC ${MODEL_SRC_FILES}
)

target_include_directories(
    libmodel
    PUBLIC
    ${MYSQL_INCLUDE_DIR}
)

target_link_libraries(libmodel
    ${MYSQL_LIBRARY}
)