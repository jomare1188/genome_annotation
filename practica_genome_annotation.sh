cd ~/GENOME_ANNOTATION
cp ~/
conda activate prokka
prokka --outdir prokka --prefix assembly_pacbio scaffolds.fasta --cpus 2 --force

# build blast db 
mkdir -p ~/GENOME_ANNOTATION/blastDB/
export BLASTDB=~/GENOME_ANNOTATION/blastDB/
cd ./blastDB/
makeblastdb -in ./../sequences_for_db.fa -dbtype 'prot' -out myDB
cd ..

# run blast
mkdir -p blast
blastp -db myDB -query ./prokka/assembly_pacbio.faa -out ./blast/out_blast.txt
