#include <iostream>
#include <cmath>
#include <omp.h>
#include <fstream>

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

    std::ofstream out;            // поток для записи
    std::string filename = "Jacobi_omp.txt";
    out.open(filename, std::ios::app);         // открываем файл для записи
    out << "Size: " << size << ", ProcNum: " << procNum << ", Time: " << time_omp << std::endl;
    out.close();

    return 0;
}
