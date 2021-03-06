#!/bin/bash
#SBATCH -n 1
#SBATCH --output=output/sequential/sequential.log
#SBATCH --mail-user=jakewheeler@nevada.unr.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:20:00
printf "1,000,000 integers"
out=$(srun bin/sequential -c -s 1000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "10,000,000 integers"
out=$(srun bin/sequential -c -s 10000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "100,000,000 integers"
out=$(srun bin/sequential -c -s 100000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "500,000,000 integers"
out=$(srun bin/sequential -c -s 500000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "750,000,000 integers"
out=$(srun bin/sequential -c -s 750000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "1,000,000,000 integers"
out=$(srun bin/sequential -c -s 1000000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "1,250,000,000 integers"
out=$(srun bin/sequential -c -s 1250000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "1,500,000,000 integers"
out=$(srun bin/sequential -c -s 1500000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "1,750,000,000 integers"
out=$(srun bin/sequential -c -s 1750000000 -e 123)
printf "$out," >> ./output/sequential/sequential.csv && printf " $out s\n"

printf "2,000,000,000 integers"
out=$(srun bin/sequential -c -s 2000000000 -e 123)
printf "$out\n" >> ./output/sequential/sequential.csv && printf " $out s\n"
