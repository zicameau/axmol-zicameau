include(CMakeDependentOption)

# Audio backend options
cmake_dependent_option(AX_USE_ALSOFT "Use OpenAL-Soft audio backend" ON
    "NOT EMSCRIPTEN" OFF)

# Graphics API options
if(APPLE)
    cmake_dependent_option(AX_USE_METAL "Use Metal graphics API" OFF
        "NOT EMSCRIPTEN" OFF)
else()
    set(AX_USE_METAL OFF CACHE BOOL "Use Metal graphics API (Apple platforms only)" FORCE)
endif() 