#!/vendor/bin/sh
#add by zach for test 
RESULT_PATH="/sdcard"
rm $RESULT_PATH/bt_result.txt
#qhcitool cmd 0x03 0x0003
#qhcitool cmd 0x06 0x0003
#qhcitool cmd 0x03 0x0005 0x02 0x00 0x02
#qhcitool cmd 0x03 0x001A 0x03
#qhcitool cmd 0x03 0x0020 0x00
#qhcitool cmd 0x03 0x0022 0x00

vendor/bin/btconfig /dev/smd3 rawcmd 0x03 0x0003 &
    sleep 0.4
vendor/bin/btconfig /dev/smd3 rawcmd 0x06 0x0003 &
    sleep 0.4
vendor/bin/btconfig /dev/smd3 rawcmd 0x03 0x0005 0x02 0x00 0x02 &
    sleep 0.4
vendor/bin/btconfig /dev/smd3 rawcmd 0x03 0x001A 0x03 &
    sleep 0.4
vendor/bin/btconfig /dev/smd3 rawcmd 0x03 0x0020 0x00 &
    sleep 0.4
vendor/bin/btconfig /dev/smd3 rawcmd 0x03 0x0022 0x00 &
setprop persist.sys.openbt 0
exit 0
