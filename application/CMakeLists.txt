add_executable(core0 
    src/main.cpp
    src/hooks.cpp 
    src/printf-stdarg.c
    src/IntQueue.c
    src/IntQueueTimer.c
)

target_include_directories(core0
    PRIVATE
        include
)

target_link_libraries(core0  
    PRIVATE 
        CMSIS
        startup
        freertos_kernel 
        freertos_kernel_port
)

set_target_properties(core0 
    PROPERTIES 
        PREFIX ""
        SUFFIX ".elf"
)

if (TARGET startup)
    get_target_property(LINKER_SCRIPT startup LINKER_SCRIPT)

    if (DEFINED LINKER_SCRIPT)
        target_link_options(core0
                PRIVATE
                -T
                ${LINKER_SCRIPT})
    endif ()
endif ()
