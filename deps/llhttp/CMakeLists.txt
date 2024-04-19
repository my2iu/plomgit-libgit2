file(GLOB SRC_HTTP "*.c" "*.h")
list(SORT SRC_HTTP)

add_library(llhttp OBJECT ${SRC_HTTP})

set_source_files_properties(api.c PROPERTIES COMPILE_FLAGS "-Wno-unused-parameter")
set_source_files_properties(http.c PROPERTIES COMPILE_FLAGS "-Wno-unused-parameter")
set_source_files_properties(llhttp.c PROPERTIES COMPILE_FLAGS "-Wno-unused-parameter")
