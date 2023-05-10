#!/bin/sh
cd build
cd bin

./seq_Jacobi_seq 100
./seq_Jacobi_seq 100
./seq_Jacobi_seq 100
./seq_Jacobi_seq 100

./seq_Jacobi_seq 1000
./seq_Jacobi_seq 1000
./seq_Jacobi_seq 1000
./seq_Jacobi_seq 1000

./seq_Jacobi_seq 1500
./seq_Jacobi_seq 1500
./seq_Jacobi_seq 1500
./seq_Jacobi_seq 1500

./seq_Jacobi_seq 2000
./seq_Jacobi_seq 2000
./seq_Jacobi_seq 2000
./seq_Jacobi_seq 2000

./seq_Jacobi_seq 2500
./seq_Jacobi_seq 2500
./seq_Jacobi_seq 2500
./seq_Jacobi_seq 2500

./seq_Jacobi_seq 3000
./seq_Jacobi_seq 3000
./seq_Jacobi_seq 3000
./seq_Jacobi_seq 3000




./omp_Jacobi_omp 100 2
./omp_Jacobi_omp 100 2
./omp_Jacobi_omp 100 2
./omp_Jacobi_omp 100 2

./omp_Jacobi_omp 1000 2
./omp_Jacobi_omp 1000 2
./omp_Jacobi_omp 1000 2
./omp_Jacobi_omp 1000 2

./omp_Jacobi_omp 1500 2
./omp_Jacobi_omp 1500 2
./omp_Jacobi_omp 1500 2
./omp_Jacobi_omp 1500 2

./omp_Jacobi_omp 2000 2
./omp_Jacobi_omp 2000 2
./omp_Jacobi_omp 2000 2
./omp_Jacobi_omp 2000 2

./omp_Jacobi_omp 2500 2
./omp_Jacobi_omp 2500 2
./omp_Jacobi_omp 2500 2
./omp_Jacobi_omp 2500 2

./omp_Jacobi_omp 3000 2
./omp_Jacobi_omp 3000 2
./omp_Jacobi_omp 3000 2
./omp_Jacobi_omp 3000 2

./omp_Jacobi_omp 100 4
./omp_Jacobi_omp 100 4
./omp_Jacobi_omp 100 4
./omp_Jacobi_omp 100 4

./omp_Jacobi_omp 1000 4
./omp_Jacobi_omp 1000 4
./omp_Jacobi_omp 1000 4
./omp_Jacobi_omp 1000 4

./omp_Jacobi_omp 1500 4
./omp_Jacobi_omp 1500 4
./omp_Jacobi_omp 1500 4
./omp_Jacobi_omp 1500 4

./omp_Jacobi_omp 2000 4
./omp_Jacobi_omp 2000 4
./omp_Jacobi_omp 2000 4
./omp_Jacobi_omp 2000 4

./omp_Jacobi_omp 2500 4
./omp_Jacobi_omp 2500 4
./omp_Jacobi_omp 2500 4
./omp_Jacobi_omp 2500 4

./omp_Jacobi_omp 3000 4
./omp_Jacobi_omp 3000 4
./omp_Jacobi_omp 3000 4
./omp_Jacobi_omp 3000 4

./omp_Jacobi_omp 100 6
./omp_Jacobi_omp 100 6
./omp_Jacobi_omp 100 6
./omp_Jacobi_omp 100 6

./omp_Jacobi_omp 1000 6
./omp_Jacobi_omp 1000 6
./omp_Jacobi_omp 1000 6
./omp_Jacobi_omp 1000 6

./omp_Jacobi_omp 1500 6
./omp_Jacobi_omp 1500 6
./omp_Jacobi_omp 1500 6
./omp_Jacobi_omp 1500 6

./omp_Jacobi_omp 2000 6
./omp_Jacobi_omp 2000 6
./omp_Jacobi_omp 2000 6
./omp_Jacobi_omp 2000 6

./omp_Jacobi_omp 2500 6
./omp_Jacobi_omp 2500 6
./omp_Jacobi_omp 2500 6
./omp_Jacobi_omp 2500 6

./omp_Jacobi_omp 3000 6
./omp_Jacobi_omp 3000 6
./omp_Jacobi_omp 3000 6
./omp_Jacobi_omp 3000 6

./omp_Jacobi_omp 100 8
./omp_Jacobi_omp 100 8
./omp_Jacobi_omp 100 8
./omp_Jacobi_omp 100 8

./omp_Jacobi_omp 1000 8
./omp_Jacobi_omp 1000 8
./omp_Jacobi_omp 1000 8
./omp_Jacobi_omp 1000 8

./omp_Jacobi_omp 1500 8
./omp_Jacobi_omp 1500 8
./omp_Jacobi_omp 1500 8
./omp_Jacobi_omp 1500 8

./omp_Jacobi_omp 2000 8
./omp_Jacobi_omp 2000 8
./omp_Jacobi_omp 2000 8
./omp_Jacobi_omp 2000 8

./omp_Jacobi_omp 2500 8
./omp_Jacobi_omp 2500 8
./omp_Jacobi_omp 2500 8
./omp_Jacobi_omp 2500 8

./omp_Jacobi_omp 3000 8
./omp_Jacobi_omp 3000 8
./omp_Jacobi_omp 3000 8
./omp_Jacobi_omp 3000 8



./tbb_Jacobi_tbb 100 2
./tbb_Jacobi_tbb 100 2
./tbb_Jacobi_tbb 100 2
./tbb_Jacobi_tbb 100 2

./tbb_Jacobi_tbb 1000 2
./tbb_Jacobi_tbb 1000 2
./tbb_Jacobi_tbb 1000 2
./tbb_Jacobi_tbb 1000 2

./tbb_Jacobi_tbb 1500 2
./tbb_Jacobi_tbb 1500 2
./tbb_Jacobi_tbb 1500 2
./tbb_Jacobi_tbb 1500 2

./tbb_Jacobi_tbb 2000 2
./tbb_Jacobi_tbb 2000 2
./tbb_Jacobi_tbb 2000 2
./tbb_Jacobi_tbb 2000 2

./tbb_Jacobi_tbb 2500 2
./tbb_Jacobi_tbb 2500 2
./tbb_Jacobi_tbb 2500 2
./tbb_Jacobi_tbb 2500 2

./tbb_Jacobi_tbb 3000 2
./tbb_Jacobi_tbb 3000 2
./tbb_Jacobi_tbb 3000 2
./tbb_Jacobi_tbb 3000 2

./tbb_Jacobi_tbb 100 4
./tbb_Jacobi_tbb 100 4
./tbb_Jacobi_tbb 100 4
./tbb_Jacobi_tbb 100 4

./tbb_Jacobi_tbb 1000 4
./tbb_Jacobi_tbb 1000 4
./tbb_Jacobi_tbb 1000 4
./tbb_Jacobi_tbb 1000 4

./tbb_Jacobi_tbb 1500 4
./tbb_Jacobi_tbb 1500 4
./tbb_Jacobi_tbb 1500 4
./tbb_Jacobi_tbb 1500 4

./tbb_Jacobi_tbb 2000 4
./tbb_Jacobi_tbb 2000 4
./tbb_Jacobi_tbb 2000 4
./tbb_Jacobi_tbb 2000 4

./tbb_Jacobi_tbb 2500 4
./tbb_Jacobi_tbb 2500 4
./tbb_Jacobi_tbb 2500 4
./tbb_Jacobi_tbb 2500 4

./tbb_Jacobi_tbb 3000 4
./tbb_Jacobi_tbb 3000 4
./tbb_Jacobi_tbb 3000 4
./tbb_Jacobi_tbb 3000 4

./tbb_Jacobi_tbb 100 6
./tbb_Jacobi_tbb 100 6
./tbb_Jacobi_tbb 100 6
./tbb_Jacobi_tbb 100 6

./tbb_Jacobi_tbb 1000 6
./tbb_Jacobi_tbb 1000 6
./tbb_Jacobi_tbb 1000 6
./tbb_Jacobi_tbb 1000 6

./tbb_Jacobi_tbb 1500 6
./tbb_Jacobi_tbb 1500 6
./tbb_Jacobi_tbb 1500 6
./tbb_Jacobi_tbb 1500 6

./tbb_Jacobi_tbb 2000 6
./tbb_Jacobi_tbb 2000 6
./tbb_Jacobi_tbb 2000 6
./tbb_Jacobi_tbb 2000 6

./tbb_Jacobi_tbb 2500 6
./tbb_Jacobi_tbb 2500 6
./tbb_Jacobi_tbb 2500 6
./tbb_Jacobi_tbb 2500 6

./tbb_Jacobi_tbb 3000 6
./tbb_Jacobi_tbb 3000 6
./tbb_Jacobi_tbb 3000 6
./tbb_Jacobi_tbb 3000 6

./tbb_Jacobi_tbb 100 8
./tbb_Jacobi_tbb 100 8
./tbb_Jacobi_tbb 100 8
./tbb_Jacobi_tbb 100 8

./tbb_Jacobi_tbb 1000 8
./tbb_Jacobi_tbb 1000 8
./tbb_Jacobi_tbb 1000 8
./tbb_Jacobi_tbb 1000 8

./tbb_Jacobi_tbb 1500 8
./tbb_Jacobi_tbb 1500 8
./tbb_Jacobi_tbb 1500 8
./tbb_Jacobi_tbb 1500 8

./tbb_Jacobi_tbb 2000 8
./tbb_Jacobi_tbb 2000 8
./tbb_Jacobi_tbb 2000 8
./tbb_Jacobi_tbb 2000 8

./tbb_Jacobi_tbb 2500 8
./tbb_Jacobi_tbb 2500 8
./tbb_Jacobi_tbb 2500 8
./tbb_Jacobi_tbb 2500 8

./tbb_Jacobi_tbb 3000 8
./tbb_Jacobi_tbb 3000 8
./tbb_Jacobi_tbb 3000 8
./tbb_Jacobi_tbb 3000 8



./std_Jacobi_std 100 2
./std_Jacobi_std 100 2
./std_Jacobi_std 100 2
./std_Jacobi_std 100 2
./std_Jacobi_std 1000 2
./std_Jacobi_std 1000 2
./std_Jacobi_std 1000 2
./std_Jacobi_std 1000 2
./std_Jacobi_std 1500 2
./std_Jacobi_std 1500 2
./std_Jacobi_std 1500 2
./std_Jacobi_std 1500 2
./std_Jacobi_std 2000 2
./std_Jacobi_std 2000 2
./std_Jacobi_std 2000 2
./std_Jacobi_std 2000 2
./std_Jacobi_std 2500 2
./std_Jacobi_std 2500 2
./std_Jacobi_std 2500 2
./std_Jacobi_std 2500 2
./std_Jacobi_std 3000 2
./std_Jacobi_std 3000 2
./std_Jacobi_std 3000 2
./std_Jacobi_std 3000 2
./std_Jacobi_std 100 4
./std_Jacobi_std 100 4
./std_Jacobi_std 100 4
./std_Jacobi_std 100 4
./std_Jacobi_std 1000 4
./std_Jacobi_std 1000 4
./std_Jacobi_std 1000 4
./std_Jacobi_std 1000 4
./std_Jacobi_std 1500 4
./std_Jacobi_std 1500 4
./std_Jacobi_std 1500 4
./std_Jacobi_std 1500 4
./std_Jacobi_std 2000 4
./std_Jacobi_std 2000 4
./std_Jacobi_std 2000 4
./std_Jacobi_std 2000 4
./std_Jacobi_std 2500 4
./std_Jacobi_std 2500 4
./std_Jacobi_std 2500 4
./std_Jacobi_std 2500 4
./std_Jacobi_std 3000 4
./std_Jacobi_std 3000 4
./std_Jacobi_std 3000 4
./std_Jacobi_std 3000 4
./std_Jacobi_std 100 6
./std_Jacobi_std 100 6
./std_Jacobi_std 100 6
./std_Jacobi_std 100 6
./std_Jacobi_std 1000 6
./std_Jacobi_std 1000 6
./std_Jacobi_std 1000 6
./std_Jacobi_std 1000 6
./std_Jacobi_std 1500 6
./std_Jacobi_std 1500 6
./std_Jacobi_std 1500 6
./std_Jacobi_std 1500 6
./std_Jacobi_std 2000 6
./std_Jacobi_std 2000 6
./std_Jacobi_std 2000 6
./std_Jacobi_std 2000 6
./std_Jacobi_std 2500 6
./std_Jacobi_std 2500 6
./std_Jacobi_std 2500 6
./std_Jacobi_std 2500 6
./std_Jacobi_std 3000 6
./std_Jacobi_std 3000 6
./std_Jacobi_std 3000 6
./std_Jacobi_std 3000 6
./std_Jacobi_std 100 8
./std_Jacobi_std 100 8
./std_Jacobi_std 100 8
./std_Jacobi_std 100 8
./std_Jacobi_std 1000 8
./std_Jacobi_std 1000 8
./std_Jacobi_std 1000 8
./std_Jacobi_std 1000 8
./std_Jacobi_std 1500 8
./std_Jacobi_std 1500 8
./std_Jacobi_std 1500 8
./std_Jacobi_std 1500 8
./std_Jacobi_std 2000 8
./std_Jacobi_std 2000 8
./std_Jacobi_std 2000 8
./std_Jacobi_std 2000 8
./std_Jacobi_std 2500 8
./std_Jacobi_std 2500 8
./std_Jacobi_std 2500 8
./std_Jacobi_std 2500 8
./std_Jacobi_std 3000 8
./std_Jacobi_std 3000 8
./std_Jacobi_std 3000 8
./std_Jacobi_std 3000 8


mpiexec -n 2 ./mpi_Jacobi_mpi 100 
mpiexec -n 2 ./mpi_Jacobi_mpi 100 
mpiexec -n 2 ./mpi_Jacobi_mpi 100 
mpiexec -n 2 ./mpi_Jacobi_mpi 100 
mpiexec -n 2 ./mpi_Jacobi_mpi 1000 
mpiexec -n 2 ./mpi_Jacobi_mpi 1000 
mpiexec -n 2 ./mpi_Jacobi_mpi 1000 
mpiexec -n 2 ./mpi_Jacobi_mpi 1000 
mpiexec -n 2 ./mpi_Jacobi_mpi 1500 
mpiexec -n 2 ./mpi_Jacobi_mpi 1500 
mpiexec -n 2 ./mpi_Jacobi_mpi 1500 
mpiexec -n 2 ./mpi_Jacobi_mpi 1500 
mpiexec -n 2 ./mpi_Jacobi_mpi 2000 
mpiexec -n 2 ./mpi_Jacobi_mpi 2000 
mpiexec -n 2 ./mpi_Jacobi_mpi 2000 
mpiexec -n 2 ./mpi_Jacobi_mpi 2000 
mpiexec -n 2 ./mpi_Jacobi_mpi 2500 
mpiexec -n 2 ./mpi_Jacobi_mpi 2500 
mpiexec -n 2 ./mpi_Jacobi_mpi 2500 
mpiexec -n 2 ./mpi_Jacobi_mpi 2500 
mpiexec -n 2 ./mpi_Jacobi_mpi 3000 
mpiexec -n 2 ./mpi_Jacobi_mpi 3000 
mpiexec -n 2 ./mpi_Jacobi_mpi 3000 
mpiexec -n 2 ./mpi_Jacobi_mpi 3000 
mpiexec -n 4 ./mpi_Jacobi_mpi 100 
mpiexec -n 4 ./mpi_Jacobi_mpi 100 
mpiexec -n 4 ./mpi_Jacobi_mpi 100 
mpiexec -n 4 ./mpi_Jacobi_mpi 100 
mpiexec -n 4 ./mpi_Jacobi_mpi 1000 
mpiexec -n 4 ./mpi_Jacobi_mpi 1000 
mpiexec -n 4 ./mpi_Jacobi_mpi 1000 
mpiexec -n 4 ./mpi_Jacobi_mpi 1000 
mpiexec -n 4 ./mpi_Jacobi_mpi 1500 
mpiexec -n 4 ./mpi_Jacobi_mpi 1500 
mpiexec -n 4 ./mpi_Jacobi_mpi 1500 
mpiexec -n 4 ./mpi_Jacobi_mpi 1500 
mpiexec -n 4 ./mpi_Jacobi_mpi 2000 
mpiexec -n 4 ./mpi_Jacobi_mpi 2000 
mpiexec -n 4 ./mpi_Jacobi_mpi 2000 
mpiexec -n 4 ./mpi_Jacobi_mpi 2000 
mpiexec -n 4 ./mpi_Jacobi_mpi 2500 
mpiexec -n 4 ./mpi_Jacobi_mpi 2500 
mpiexec -n 4 ./mpi_Jacobi_mpi 2500 
mpiexec -n 4 ./mpi_Jacobi_mpi 2500 
mpiexec -n 4 ./mpi_Jacobi_mpi 3000 
mpiexec -n 4 ./mpi_Jacobi_mpi 3000 
mpiexec -n 4 ./mpi_Jacobi_mpi 3000 
mpiexec -n 4 ./mpi_Jacobi_mpi 3000 
mpiexec -n 6 ./mpi_Jacobi_mpi 100
mpiexec -n 6 ./mpi_Jacobi_mpi 100
mpiexec -n 6 ./mpi_Jacobi_mpi 100
mpiexec -n 6 ./mpi_Jacobi_mpi 100
mpiexec -n 6 ./mpi_Jacobi_mpi 1000
mpiexec -n 6 ./mpi_Jacobi_mpi 1000
mpiexec -n 6 ./mpi_Jacobi_mpi 1000
mpiexec -n 6 ./mpi_Jacobi_mpi 1000
mpiexec -n 6 ./mpi_Jacobi_mpi 1500
mpiexec -n 6 ./mpi_Jacobi_mpi 1500
mpiexec -n 6 ./mpi_Jacobi_mpi 1500
mpiexec -n 6 ./mpi_Jacobi_mpi 1500
mpiexec -n 6 ./mpi_Jacobi_mpi 2000
mpiexec -n 6 ./mpi_Jacobi_mpi 2000
mpiexec -n 6 ./mpi_Jacobi_mpi 2000
mpiexec -n 6 ./mpi_Jacobi_mpi 2000
mpiexec -n 6 ./mpi_Jacobi_mpi 2500
mpiexec -n 6 ./mpi_Jacobi_mpi 2500
mpiexec -n 6 ./mpi_Jacobi_mpi 2500
mpiexec -n 6 ./mpi_Jacobi_mpi 2500
mpiexec -n 6 ./mpi_Jacobi_mpi 3000
mpiexec -n 6 ./mpi_Jacobi_mpi 3000
mpiexec -n 6 ./mpi_Jacobi_mpi 3000
mpiexec -n 6 ./mpi_Jacobi_mpi 3000
mpiexec -n 8./mpi_Jacobi_mpi 100
mpiexec -n 8./mpi_Jacobi_mpi 100
mpiexec -n 8./mpi_Jacobi_mpi 100
mpiexec -n 8./mpi_Jacobi_mpi 100
mpiexec -n 8./mpi_Jacobi_mpi 1000
mpiexec -n 8./mpi_Jacobi_mpi 1000
mpiexec -n 8./mpi_Jacobi_mpi 1000
mpiexec -n 8./mpi_Jacobi_mpi 1000
mpiexec -n 8./mpi_Jacobi_mpi 1500
mpiexec -n 8./mpi_Jacobi_mpi 1500
mpiexec -n 8./mpi_Jacobi_mpi 1500
mpiexec -n 8./mpi_Jacobi_mpi 1500
mpiexec -n 8./mpi_Jacobi_mpi 2000
mpiexec -n 8./mpi_Jacobi_mpi 2000
mpiexec -n 8./mpi_Jacobi_mpi 2000
mpiexec -n 8./mpi_Jacobi_mpi 2000
mpiexec -n 8./mpi_Jacobi_mpi 2500
mpiexec -n 8./mpi_Jacobi_mpi 2500
mpiexec -n 8./mpi_Jacobi_mpi 2500
mpiexec -n 8./mpi_Jacobi_mpi 2500
mpiexec -n 8./mpi_Jacobi_mpi 3000
mpiexec -n 8./mpi_Jacobi_mpi 3000
mpiexec -n 8./mpi_Jacobi_mpi 3000
mpiexec -n 8./mpi_Jacobi_mpi 3000