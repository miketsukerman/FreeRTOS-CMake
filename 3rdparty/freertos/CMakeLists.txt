include(FetchContent)

add_subdirectory(config)

# to see how git fetches repo we need to set FETCHCONTENT_QUIET
# and GIT_PROGRESS TRUE
Set(FETCHCONTENT_QUIET FALSE)

FetchContent_Declare(
  freertos
  GIT_REPOSITORY https://github.com/FreeRTOS/FreeRTOS-Kernel.git
  GIT_TAG        V10.6.1
  GIT_SHALLOW    TRUE
  GIT_PROGRESS   TRUE
)

FetchContent_MakeAvailable(freertos)
