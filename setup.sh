mkdir cr
cd c4
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init --depth=1 --no-repo-verify -u git://github.com/crdroidandroid/android.git -b 10.0 -g default,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
git clone https://github.com/horoid/sdp439_common_samsung.git device/samsung/sdm439-common
git clone https://github.com/horoid/device_samsung_m01q.git device/samsung/m01q
lunch lineage_m01q-userdebug
mka bacon -j16
cd out/target/product/m01q
