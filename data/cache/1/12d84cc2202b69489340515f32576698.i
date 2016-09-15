a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"修改cpu频率";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"device/mstar/arbutus/preinstall/cpu_dvfs_scaling.sh";}i:2;i:30;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:81;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1280:"

#!/system/bin/sh

echo 1 > /proc/delay_free/cma_force_free_cache

action=$(getprop mstar.cpu.dvfs.scaling)
echo $action

chmod 660 /proc/CPU_calibrating

benchmark_boost_client_id=64
#benchmark_boost_freq=1400000
benchmark_boost_freq=1294000

launch_boost_client_id=128
#launch_boost_freq=1400000
launch_boost_freq=1294000
launch_boost_duration=5

#uhd_boost_client_id=160
#uhd_boost_freq=700000


if [ "$action" == "benchmark" ]; then
    # start app boost
    echo $(( ($benchmark_boost_client_id<<22) + $benchmark_boost_freq )) > /proc/CPU_calibrating
    sh /system/bin/benchmark_boost_monitor.sh &
    exit 0

elif [ "$action" == "reset" ]; then
    # try to stop app boost; if app boost is not running, we just lose some time for executing a command for nothing
    echo $(( ($benchmark_boost_client_id<<22) + 0 )) > /proc/CPU_calibrating

    # start launch boost
    echo $(( ($launch_boost_client_id<<22) + $launch_boost_freq )) > /proc/CPU_calibrating

    sleep $launch_boost_duration

    # stop launch boost
    echo $(( ($launch_boost_client_id<<22) + 0 )) > /proc/CPU_calibrating

    exit 0

elif [ "$action" == "4k2kmode" ]; then
    echo $(( ($uhd_boost_client_id<<22) + $uhd_boost_freq )) > /proc/CPU_calibrating
    exit 0
fi

busybox devmem 0x1F200A1C 16


";i:1;s:4:"bash";i:2;N;}i:2;i:88;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1381;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1381;}}