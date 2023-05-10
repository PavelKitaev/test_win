cmake_minimum_required( VERSION 3.12 )

message( STATUS "Solution of the Dirichlet problem for the Poisson equation" )

include(cmake/configure.cmake)

set(USE_MPI ON)
set(USE_OMP ON)
set(USE_TBB ON)
set(USE_SEQ ON)
set(USE_STD ON)
set(CMAKE_BUILD_TYPE Release)

################################ MPI ################################
if( USE_MPI )
    find_package( MPI )
    if( MPI_FOUND )
        include_directories( ${MPI_INCLUDE_PATH} )
    else( MPI_FOUND )
        set( USE_MPI OFF )
    endif( MPI_FOUND )
endif( USE_MPI )

############################### OpenMP ##############################
if( USE_OMP OR USE_SEQ )
    find_package( OpenMP )
    if( OpenMP_FOUND )
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
        set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
    else( OpenMP_FOUND )
        message(FATAL_ERROR "OpenMP NOT FOUND")
    endif( OpenMP_FOUND )
endif( USE_OMP OR USE_SEQ )

############################ std::thread ############################
if( USE_STD )
    find_package( Threads )
endif( USE_STD )

################################ TBB ################################
if( USE_TBB )
    include(cmake/onetbb.cmake)
endif( USE_TBB )

############################## Modules ##############################
include_directories(3rdparty/unapproved)
add_subdirectory(modules)
