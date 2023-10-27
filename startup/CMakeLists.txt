add_library(startup 
    src/startup_gcc.c
)

set_target_properties(startup 
    PROPERTIES
        LINKER_SCRIPT ${CMAKE_CURRENT_LIST_DIR}/linker/linkerscript.ld
)
