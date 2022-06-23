# 
# Download NTIRE 2020 Real World SR challenge track 1 data
# 

mkdir -p data/NTIRE20_t1

# 
# 2650 training images in the source domain
# 
if [ -d "./data/NTIRE20_t1/train_LR" ]; then
    echo "data train_LR already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-train-source.zip
    unzip track1-train-source.zip -d data/NTIRE20_t1
    mv data/NTIRE20_t1/track1-train-source data/NTIRE20_t1/train_LR
    rm -f track1-train-source.zip 
fi

# 
# 800 training images in the target domain
# 
if [ -d "./data/NTIRE20_t1/train_HR" ]; then
    echo "data train_HR already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/train-target.zip
    unzip train-target.zip -d data/NTIRE20_t1
    mv data/NTIRE20_t1/train-target data/NTIRE20_t1/train_HR
    rm -f train-target.zip
fi

# 
# 100 validation images
# 
if [ -d "./data/NTIRE20_t1/validation_LR" ]; then
    echo "data validation_LR already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-valid-input.zip
    unzip track1-valid-input.zip -d data/NTIRE20_t1
    mv data/NTIRE20_t1/track1-valid-input data/NTIRE20_t1/validation_LR
    rm -f track1-valid-input.zip
fi
 
# 
# 100 testing images
# 
if [ -d "./data/NTIRE20_t1/validation_HR" ]; then
    echo "data validation_HR already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-valid-gt.zip
    unzip track1-valid-gt.zip -d data/NTIRE20_t1
    mv data/NTIRE20_t1/track1-valid-gt data/NTIRE20_t1/validation_HR
    rm -f track1-valid-gt.zip 
fi