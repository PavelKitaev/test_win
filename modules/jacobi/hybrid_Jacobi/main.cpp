// #include <iostream>
// #include <cmath>
// #include <omp.h>
// #include "mpi.h"

// void PrintMatrix(double* matrix, int size) {
//   for (int i = 0; i < size; i++) {
//     for (int j = 0; j < size; j++) {
//       std::cout << matrix[i * size + j] << " ";
//     }

//     std::cout << std::endl;
//   }
// }

// void FillingTheMatrix(double* matrix, int size) {
//     for (int i = 0; i < size; i++) {
//         for (int j = 0; j < size; j++) {
//             if ((i == 0) || (i == size - 1) || (j == 0) || (j == size - 1)) {
//                 matrix[i * size + j] = 100;
//             } else {
//                 matrix[i * size + j] = 0;
//             }
//         }
//     }
// }

// void ParallelAlgHybrid(double* matrix, int size, double eps, int num_omp_th) {
//     int procRank, procNum;
//     MPI_Comm_size(MPI_COMM_WORLD, &procNum);
//     MPI_Comm_rank(MPI_COMM_WORLD, &procRank);
    
//     const int delta = (size-2) / procNum;
//     int residue = (size-2) % procNum;
    
//     int begin, end;
    
//     int* begin_temp;
//     int* end_temp;
    
//     double* matrix_temp;
//     MPI_Win win_matrix_temp;      //Создаем окно доступа к матрице
    
//     if (procRank == 0) {
//         begin_temp = new int[procNum];
//         end_temp = new int[procNum];
        
//         begin_temp[0] = 1;
//         end_temp[0] = begin_temp[0] + delta;
        
//         for (int i = 1; i < procNum; i++) {
//             begin_temp[i] = end_temp[i-1];
//             end_temp[i] = begin_temp[i] + delta;
            
//             if (residue != 0) {
//                 end_temp[i-1] += residue;
//             }
//         }
        
//         end_temp[procNum-1] += residue;
        
//         MPI_Win_allocate_shared(size*size * sizeof(double), 1, MPI_INFO_NULL, MPI_COMM_WORLD, &matrix_temp, &win_matrix_temp);
//         for (int i = 1; i < size - 1; i++ ) {
//             for (int j = 1; j < size - 1; j++ ) {
//                 matrix_temp[size * i + j] = matrix  [size * i + j];
//             }
//         }
//     } else {
//         int disp;
//         MPI_Aint ssize;
//         MPI_Win_allocate_shared(1, sizeof(double), MPI_INFO_NULL, MPI_COMM_WORLD, &matrix_temp, &win_matrix_temp);
//         MPI_Win_shared_query(win_matrix_temp, 0, &ssize, &disp, &matrix_temp);
//     }
    
//     MPI_Scatter(&begin_temp[0], 1, MPI_INT, &begin, 1, MPI_INT, 0, MPI_COMM_WORLD);
//     MPI_Scatter(&end_temp[0], 1, MPI_INT, &end, 1, MPI_INT, 0, MPI_COMM_WORLD);
    
//     int q = 0;
//     double dmax, temp, d;
//     double temp_dmax = 0;
//     double* dm = new double[size];
    
//     do {
//         q++;
//         dmax = 0;

// #pragma omp parallel for private(d, temp) num_threads(num_omp_th)
//         for (int i = begin; i < end; i++ ) {
//             dm[i-1] = 0;
//             for (int j = 1; j < size - 1; j++ ) {
//                 temp = matrix[size * i + j];
//                 matrix_temp[size * i + j] = 0.25 * (matrix[size * (i - 1) + j] +
//                                                matrix[size * (i + 1) + j] +
//                                                matrix[size * i + (j - 1)] +
//                                                matrix[size * i + (j + 1)] );
                
//                 d = fabs(temp-matrix_temp[size * i + j]);
//                 if (dm[i-1] < d)
//                     dm[i-1] = d;
//             }
//         }
        
//         //MPI_Reduce(&dm, &temp_dmax, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);
        
//         MPI_Barrier(MPI_COMM_WORLD);
//         if (procRank == 0) {
//             for (int i = 0; i < size; i++){
//                 dmax = (dm[i] > dmax) ? dm[i] : dmax;
//             }
//             //dmax = (temp_dmax > dmax) ? temp_dmax : dmax;
            
//             for (int i = 1; i < size - 1; i++ ) {
//                 for (int j = 1; j < size - 1; j++ ) {
//                     matrix[size * i + j] = matrix_temp[size * i + j];
//                 }
//             }
//         }
        
//         MPI_Bcast(&dmax, 1, MPI_DOUBLE, 0, MPI_COMM_WORLD);
        
//     } while ( dmax > eps );
    
//     if (procRank == 0) {
//         delete[] begin_temp;
//         delete[] end_temp;
//         std::cout << "\nHybrid iter: " << q;
//     }

//     delete[] dm;
    
//     MPI_Win_free(&win_matrix_temp);
//     MPI_Barrier(MPI_COMM_WORLD);
// }

// int main(int argc, char **argv)
// {
//     MPI_Init(&argc, &argv);

//     int procRank, procNum;
//     MPI_Comm_size(MPI_COMM_WORLD, &procNum);
//     MPI_Comm_rank(MPI_COMM_WORLD, &procRank);

//     double eps = 0.01;
//     int size;
//     sscanf(argv[1], "%d", &size);

//     int num_omp_th;
//     sscanf(argv[2], "%d", &num_omp_th);

//     double start_mpi, end_mpi;
//     double* matrix_mpi;
//     MPI_Win win_matrix;      //Создаем окно доступа к матрице


//     if (procRank == 0) {
//         MPI_Win_allocate_shared(size*size * sizeof(double), 1, MPI_INFO_NULL, MPI_COMM_WORLD, &matrix_mpi, &win_matrix);
//         FillingTheMatrix(matrix_mpi, size);

//         std::cout << "ProcNum(MPI): " << procNum << ", Num thread OMP:" << num_omp_th << std::endl;
//         std::cout << "Start hybrid... " << std::endl;
//         start_mpi = MPI_Wtime();
//     } else {
//         int disp;
//         MPI_Aint ssize;
//         MPI_Win_allocate_shared(1, sizeof(double), MPI_INFO_NULL, MPI_COMM_WORLD, &matrix_mpi, &win_matrix);
//         MPI_Win_shared_query(win_matrix, 0, &ssize, &disp, &matrix_mpi);
//     }

//     ParallelAlgHybrid(matrix_mpi, size, eps, num_omp_th);

//     if (procRank == 0){
//         end_mpi = MPI_Wtime();
//         double time_mpi = end_mpi - start_mpi;

//         std::cout << ", Hybrid Time: " << time_mpi << std::endl;

//         if (size < 15)
//             PrintMatrix(matrix_mpi, size);
//     }

//     MPI_Barrier(MPI_COMM_WORLD);
//     MPI_Win_free(&win_matrix);

//     MPI_Finalize();
//     return 0;
// }


#include <iostream>
#include <cmath>
#include <omp.h>

void PrintMatrix(double* matrix, int size) {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      std::cout << matrix[i * size + j] << " ";
    }

    std::cout << std::endl;
  }
}

void FillingTheMatrix(double* matrix, int size) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            if ((i == 0) || (i == size - 1) || (j == 0) || (j == size - 1)) {
                matrix[i * size + j] = 100;
            } else {
                matrix[i * size + j] = 0;
            }
        }
    }
}

void ParallelAlgOMP(double* matrix, int size, double eps, int th_num) {
    double* matrix_temp = new double[size*size];
    
    for (int i = 1; i < size - 1; i++ ) {
        for (int j = 1; j < size - 1; j++ ) {
            matrix_temp[size * i + j] = matrix  [size * i + j];
        }
    }
    
    int q = 0;
    double dm, d, temp;
    double dmax;
    
    omp_lock_t dmax_lock;
    omp_init_lock(&dmax_lock);
    
    do {
        q++;
        dmax = 0;
        
#pragma omp parallel for shared(matrix, size, dmax) private(temp, d, dm) num_threads(th_num)
        for (int i = 1; i < size - 1; i++ ) {
            dm = 0;
            for (int j = 1; j < size - 1; j++ ) {
                temp = matrix[size * i + j];
                matrix_temp[size * i + j] = 0.25 * (matrix[size * (i - 1) + j] +
                                               matrix[size * (i + 1) + j] +
                                               matrix[size * i + (j - 1)] +
                                               matrix[size * i + (j + 1)] );
                
                d = fabs(temp-matrix_temp[size * i + j]);
                if ( dm < d )
                    dm = d;
            }
            
            omp_set_lock(&dmax_lock);
            if ( dmax < dm ) {
                dmax = dm;
            }
            omp_unset_lock(&dmax_lock);
        }
        
        for (int i = 1; i < size - 1; i++ ) {
            for (int j = 1; j < size - 1; j++ ) {
                matrix[size * i + j] = matrix_temp[size * i + j];
            }
        }
        
    } while ( dmax > eps );

    std::cout << "\nOMP iter: " << q;
}

int main(int argc, char **argv)
{
    double eps = 0.01;
    int size;
    sscanf(argv[1], "%d", &size);

    int procNum;
    sscanf(argv[2], "%d", &procNum);
    
    double* matrix_omp = new double[size * size];
    FillingTheMatrix(matrix_omp, size);

    std::cout << "OMP Start. Size: " << size << ", procNum: " << procNum << std::endl;
    double start_omp = omp_get_wtime();
    ParallelAlgOMP(matrix_omp, size, eps, procNum);
    double end_omp = omp_get_wtime();

    double time_omp = end_omp - start_omp;
    std::cout << ", OMP Time: " << time_omp << std::endl;

    if (size < 15)
        PrintMatrix(matrix_omp, size);

    delete[] matrix_omp;
    return 0;
}
