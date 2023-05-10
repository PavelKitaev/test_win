get_filename_component(ProjectId ${CMAKE_CURRENT_SOURCE_DIR} NAME)

if ( USE_OMP )
    set(ProjectId "${ProjectId}_omp")
    project( ${ProjectId} )
    message( STATUS "-- " ${ProjectId} )

    file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.h)

    set(PACK_LIB "${ProjectId}_lib")
    add_library(${PACK_LIB} STATIC ${ALL_SOURCE_FILES} )
    
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
    elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
    elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /openmp")
    endif()
    
    add_executable( ${ProjectId} ${ALL_SOURCE_FILES} )

    target_link_libraries(${ProjectId} ${PACK_LIB})

    target_link_libraries(${ProjectId} ${OpenMP_libomp_LIBRARY})

else( USE_OMP )
    message( STATUS "-- ${ProjectId} - NOT BUILD!"  )
endif( USE_OMP )