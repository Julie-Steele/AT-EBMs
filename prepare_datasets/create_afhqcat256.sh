# wget -N https://www.dropbox.com/s/scckftx13grwmiv/afhq_v2.zip?dl=0 -O prepare_datasets/downloads/afhq_v2.zip
# 7z x prepare_datasets/downloads/afhq_v2.zip -oprepare_datasets/downloads/afhq_v2
# python prepare_datasets/resize_crop.py --resize 256 --datadir prepare_datasets/downloads/afhq_v2/train/cat --savedir datasets/afhq256/train/cat/data
# rm -rf prepare_datasets/downloads/afhq_v2
# rm prepare_datasets/downloads/afhq_v2.zip


#editing the script to fix cropping errors 
curl -L https://www.dropbox.com/s/scckftx13grwmiv/afhq_v2.zip?dl=0 -o prepare_datasets/downloads/afhq_v2.zip
unzip prepare_datasets/downloads/afhq_v2.zip -d prepare_datasets/downloads/afhq_v2
#did the whole repair thing 
# zip -FF prepare_datasets/downloads/afhq_v2.zip --out prepare_datasets/downloads/repaired.zip
# unzip prepare_datasets/downloads/repaired.zip
python prepare_datasets/resize_crop.py --size 256 --datadir prepare_datasets/downloads/afhq_v2/train/cat --savedir datasets/afhq256/train/cat/data
rm -rf prepare_datasets/downloads/afhq_v2
rm prepare_datasets/downloads/afhq_v2.zip

