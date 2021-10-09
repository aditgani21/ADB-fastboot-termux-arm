#!/data/data/com.termux/files/usr/bin/bash

echo
echo -e "\e[93mPlease wait"
echo -e "\e[93mUninstaling ADB & FastBoot Tools from Termux."
echo
echo -e "\e[32m[*] \e[34mRemoving tools..."
rm -rf $PREFIX/bin/adb
echo -e "\e[32m[*] \e[34mRemoving binaries..."
rm -rf $PREFIX/bin/adb.bin $PREFIX/bin/adb.bin-armeabi $PREFIX/bin/fastboot $PREFIX/bin/fastboot-armeabi
echo -e "\e[32m[*] \e[34mRemoving keys..."
case `find $HOME/adbfiles -type f | wc -l` in
0 | 2)
  rm -rf $HOME/adbfiles ;;
*)
  rm -rf $HOME/adbfiles/adbkey $HOME/adbfiles/adbkey.pub ;;
esac
echo -e "\e[32m[*] \e[34mCleaning up..."
rm -rf Uninstall.sh
echo
echo -e "\e[32mTools were successfully uninstalled!\e[39m"
echo
