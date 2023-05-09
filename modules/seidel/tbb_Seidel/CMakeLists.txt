get_filename_component(ProjectId ${CMAKE_CURRENT_SOURCE_DIR} NAME)

if ( USE_TBB )
    set(ProjectId "${ProjectId}_tbb")
    project( ${ProjectId} )
    message( STATUS "-- " ${ProjectId} )

    file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.h)

    set(PACK_LIB "${ProjectId}_lib")
    add_library(${PACK_LIB} STATIC ${ALL_SOURCE_FILES} )

    add_executable( ${ProjectId} ${ALL_SOURCE_FILES} )

    target_link_libraries(${ProjectId} ${PACK_LIB})
    target_link_directories(${ProjectId} PUBLIC ${CMAKE_BINARY_DIR}/onetbb-install/lib)

else( USE_TBB )
    message( STATUS "-- ${ProjectId} - NOT BUILD!"  )
endif( USE_TBB )
