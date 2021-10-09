#!/data/data/com.termux/files/usr/bin/bash

directory="$(pwd)"
echo
echo -e "\e[93mPlease wait"
echo -e "\e[93mInstall ADB & FastBoot Tools in Termux."
echo
echo -e "\e[32m[*] \e[34mDownloading requirement..."
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://github.com/aditgani21/ADB-fastboot-termux-arm/raw/main/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading binaries..."
wget https://github.com/aditgani21/ADB-fastboot-termux-arm/raw/main/bin/adb.bin -P $downpath/ -q
echo -ne '#####                     (33%)\r'
sleep 1
wget https://github.com/aditgani21/ADB-fastboot-termux-arm/raw/main/bin/adb.bin-armeabi -P $downpath/ -q
echo -ne '######                     (40%)\r'
sleep 1
wget https://github.com/aditgani21/ADB-fastboot-termux-arm/raw/main/bin/fastboot -P $downpath/ -q

wget https://github.com/aditgani21/ADB-fastboot-termux-arm/raw/main/bin/fastboot-armeabi -P $downpath/ -q
echo -ne '#######################   (100%)\r'
echo -e "\e[32m[*] \e[34mCopying files..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mSetting execution permissions..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mCreating workspace directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up..."
cd $directory
rm -rf $downpath
rm -rf Install.sh
echo
echo -e "\e[32mTools were successfully installed!\e[39m"
echo
