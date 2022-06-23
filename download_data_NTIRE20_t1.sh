# 
# Download NTIRE 2020 Real World SR challenge track 1 data
# 

mkdir -p data/NTIRE20_t1

# 
# 2650 training images in the source domain
# 
if [ -d "./data/NTIRE20_t1/track1-train-source" ]; then
    echo "data track1-train-source already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-train-source.zip
    unzip track1-train-source.zip -d data/NTIRE20_t1
    rm -f track1-train-source.zip 
fi

# 
# 800 training images in the target domain
# 
if [ -d "./data/NTIRE20_t1/train-target" ]; then
    echo "data train-target already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/train-target.zip
    unzip train-target.zip -d data/NTIRE20_t1
    rm -f train-target.zip
fi

# 
# 100 validation images
# 
if [ -d "./data/NTIRE20_t1/track1-valid-input" ]; then
    echo "data track1-valid-input already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-valid-input.zip
    unzip track1-valid-input.zip -d data/NTIRE20_t1
    rm -f track1-valid-input.zip
fi
 
# 
# 100 testing images
# 
if [ -d "./data/NTIRE20_t1/track1-valid-gt" ]; then
    echo "data track1-valid-gt already exist."
else
    wget https://data.vision.ee.ethz.ch/alugmayr/real-world-sr/NTIRE20/track1-valid-gt.zip
    unzip track1-valid-gt.zip -d data/NTIRE20_t1
    rm -f track1-valid-gt.zip 
fi