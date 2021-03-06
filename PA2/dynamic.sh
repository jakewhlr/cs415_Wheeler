#!/bin/bash
#SBATCH -n 8
#SBATCH --output=output/dynamic/dynamic.log
#SBATCH --mail-user=jakewheeler@nevada.unr.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:10:00
printf "500x500: "
test1=$(srun bin/dynamic output/dynamic/500x500.ppm 500 500)
printf "$test1," >> ./output/dynamic/dynamic.csv && printf "$test1 s\n"
printf "1000x1000: "
test2=$(srun bin/dynamic output/dynamic/1000x1000.ppm 1000 1000)
printf "$test2," >> ./output/dynamic/dynamic.csv && printf "$test2 s\n"
printf "5000x5000: "
test3=$(srun bin/dynamic output/dynamic/5000x5000.ppm 5000 5000)
printf "$test3," >> ./output/dynamic/dynamic.csv && printf "$test3 s\n"
printf "10000x10000: "
test4=$(srun bin/dynamic output/dynamic/10000x10000.ppm 10000 10000)
printf "$test4," >> ./output/dynamic/dynamic.csv && printf "$test4 s\n"
printf "25000x25000: "
test5=$(srun bin/dynamic output/dynamic/25000x25000.ppm 25000 25000)
printf "$test5\n" >> ./output/dynamic/dynamic.csv && printf "$test5 s\n"
