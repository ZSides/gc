#rm Miniconda*
#MINICONDA_INSTALLER_SCRIPT=Miniconda3-4.5.4-Linux-x86_64.sh
#MINICONDA_PREFIX=/usr/local
#wget https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT
#chmod +x $MINICONDA_INSTALLER_SCRIPT
#./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX
git clone https://github.com/ZSides/gc.git
mkdir gc/vgg19_weight; wget https://github.com/TachibanaYoshino/AnimeGAN/releases/download/vgg16%2F19.npy/vgg19.npy && mv vgg19.npy gc/vgg19_weight/.
mv gc/* . && rm -rf gc
pip install --upgrade pip && pip -V
pip install tqdm numpy opencv-python tensorflow==1.15.0
# cp tools/edge_smooth.py . && python edge_smooth.py --dataset RSA --img_size 256
