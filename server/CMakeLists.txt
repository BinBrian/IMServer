aux_source_directory(. SERVER_SRC_LIST)

add_executable(ChatServer ${SERVER_SRC_LIST})

target_link_libraries(ChatServer
  libservice
  libmyredis
  ${muduo_base}
  ${muduo_net}
  pthread 
  rt
)