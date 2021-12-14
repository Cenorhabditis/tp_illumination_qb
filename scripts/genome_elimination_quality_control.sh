# Quality control with fastqc

mkdir -p results/intermediary_results/raw_quality

for FASTQ_GZ_FILES in data/fastq_files/*gz
do
  FASTQ_GZ_NAME=$(basename $FASTQ_GZ_FILES)
  FASTQ_GZ_PREFIX=${FASTQ_GZ_NAME/.fastq.gz}
  fastqc $FASTQ_GZ_FILES -o results/intermediary_results/raw_quality -t 7
  #echo $FASTQ_GZ_FILES
  #echo $FASTQ_GZ_NAME
   echo $FASTQ_GZ_PREFIX
done

