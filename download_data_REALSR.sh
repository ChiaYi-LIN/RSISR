"""
Download RealSR dataset Version 1: 234 scenes 
"""
mkdir -p ./data/REALSR
gdown 1gKnm9BdgyqISCTDAbGbpVitT-QII_unw -O REALSR_v1.tar.gz
tar -xzf REALSR_v1.tar.gz --directory ./data/REALSR