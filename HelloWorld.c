#include<stdio.h>
#include<omp.h>

/* COMPILO CON gcc -fopenmp HelloWorld.c -o HelloWorld_c Y EJECUTO CON ./HelloWorld_c */
/* CAMBIO EL NUMERO DE THREADS CON export OMP_NUM_THREADS=N */

int main(int argc, char ** argv)
{
	#pragma omp parallel
	{
		int thread_id = omp_get_thread_num();
		int thread_count = omp_get_num_threads();
		printf("Hello from thread number: %d out of: %d\n", thread_id, thread_count);
	}
	return 0;
}
