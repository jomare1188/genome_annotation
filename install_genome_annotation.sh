# Make folder to genome_annotation practice
cd && mkdir -p GENOME_ANNOTATION
# Install prokka
conda create -n prokka -y
conda activate prokka
conda install -c conda-forge -c bioconda -c defaults prokka -y
conda deactivate

# Install IGV
wget https://data.broadinstitute.org/igv/projects/downloads/2.13/IGV_Linux_2.13.0_WithJava.zip
unzip IGV_Linux_2.13.0_WithJava.zip
sudo echo export PATH=$PATH:"~/IGV_Linux_2.13.0" >> ~/.bashrc
source ~/.bashrc
igv.sh

# Install blast+
sudo apt install ncbi-blast+

# Download file to build blastdb
scp -P 1000 jorge.munoz@bioinfo.cena.usp.br:/home/jorge.munoz/sequence.fasta.gz ~/GENOME_ANNOTATION/sequences_for_db.fa.gz
mandarinasparadormir1188
gzip -d sequences_for_db.fa.gz



