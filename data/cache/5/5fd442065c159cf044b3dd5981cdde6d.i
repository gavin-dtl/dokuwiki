a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"wifi模块调试";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:31;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"调试一般步骤";i:1;i:3;i:2;i:31;}i:2;i:31;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:31;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:59;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:59;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:59;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" 编译对应wifi模块";}i:2;i:63;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:86;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:86;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:86;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:86;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:" WPA_SUPPLICANT + WPA_CLI User Guide (可ifconfig wlan0 up 查看supplicant logcat信息)";}i:2;i:90;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:179;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:179;}i:17;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:179;}i:18;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:179;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" android 上层";}i:2;i:183;}i:20;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:198;}i:21;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:198;}i:22;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:198;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:200;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"相关";i:1;i:3;i:2;i:200;}i:2;i:200;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:200;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:9762:"
  Realtek
  This document had described the way to inform the wpa_supplicant to do the
  WiFi connection by using the wpa_cli. The wpa_supplicant had supported all
  kinds of security connections and WPS defined in the 802.11 specification. So,
  we suggest use the wpa_supplicant to do the WiFi connection rather than the
  iwconfig wireless tool.
  (A) WPA_SUPPLICANT + WPA_CLI User Guide
  1.start wpa_supplicant in the background
  wpa_supplicant –Dnl80211 -iwlan0 -c /tmp/net/wpa.conf –B
  or
  wpa_supplicant -Dwext -iwlan0 -c /tmp/net/wpa.conf -B
  2.Scaning AP and See Results
  wpa_cli -p/var/run/wpa_supplicant scan
  wpa_cli -p/var/run/wpa_supplicant scan_results
  3.Connect to AP
  a.OPEN
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  b.WEP40 with open system
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0 1234567890
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  c.WEP40 with shared key mode
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0 1234567890
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  Realtek
  wpa_cli –p/var/run/wpa_supplicant set_network 0 auth_alg SHARED
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  d.WEP104 with open system
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0
  12345678901234567890123456
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  e.WEP104 with shared key mode
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0
  12345678901234567890123456
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  wpa_cli –p/var/run/wpa_supplicant set_network 0 auth_alg SHARED
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  #If wep key is ASCII type,use the following cmd:
  #WEP40: wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0 '"12345"'
  #WEP104: wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0
  '"1234567890123"'
  #WEP key index is X from 0 to 3, change X for other key index and select it.
  #wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_keyX
  12345678901234567890123456
  #wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx X
  f.TKIP and AES
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 1
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"dlink"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt WPA-PSK
  wpa_cli -p/var/run/wpa_supplicant set_network 0 psk '"12345678"'
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  Realtek
  4.Ad-hoc mode
  a.OPEN
  wpa_cli -p/var/run/wpa_supplicant scan
  wpa_cli -p/var/run/wpa_supplicant scan_results
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 2
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"Adhoc_test"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 mode 1
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 frequency 2412
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  #frequency is to set the channel frequency for Ad-hoc master.
  b.WEP40
  wpa_cli -p/var/run/wpa_supplicant scan
  wpa_cli -p/var/run/wpa_supplicant scan_results
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 2
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"Adhoc_test"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 mode 1
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0 1234567890
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  wpa_cli -p/var/run/wpa_supplicant set_network 0 frequency 2412
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  c.WEP104
  wpa_cli -p/var/run/wpa_supplicant scan
  wpa_cli -p/var/run/wpa_supplicant scan_results
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant ap_scan 2
  wpa_cli -p/var/run/wpa_supplicant add_network
  wpa_cli -p/var/run/wpa_supplicant set_network 0 ssid '"Adhoc_test"'
  wpa_cli -p/var/run/wpa_supplicant set_network 0 mode 1
  wpa_cli -p/var/run/wpa_supplicant set_network 0 key_mgmt NONE
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_key0
  12345678901234567890123456
  wpa_cli -p/var/run/wpa_supplicant set_network 0 wep_tx_keyidx 0
  wpa_cli -p/var/run/wpa_supplicant set_network 0 frequency 2412
  wpa_cli -p/var/run/wpa_supplicant select_network 0
  5.Save the Current Connection AP configuration file
  wpa_cli -p/var/run/wpa_supplicant save_config
  Realtek
  6.WPS Connection
  Push Button:
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant wps_pbc any
  Pin Code:
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant wps_pin any 12345670
  or
  wpa_cli -p/var/run/wpa_supplicant remove_network 0
  wpa_cli -p/var/run/wpa_supplicant wps_pin any
  7.Get Current Status of wpa_supplicant
  wpa_cli -p/var/run/wpa_supplicant status
  8.Disable current network connection
  wpa_cli -p/var/run/wpa_supplicant disable_network 0
  (B) WPA_SUPPLICANT + WPA_CLI - Control interface commands
  Following commands can be used with wpa_cli
  PING
  This command can be used to test whether wpa_supplicant is replying to the control interface commands.
  The expected reply is PONG if the connection is open and wpa_supplicant is processing commands.
  STATUS
  Request current status information. The output is a text block with each line in
  variable=value format. For example:
  bssid=02:00:01:02:03:04
  ssid=test network
  pairwise_cipher=CCMP
  group_cipher=CCMP
  key_mgmt=WPA-PSK
  wpa_state=COMPLETED
  LIST_NETWORKS
  List configured networks.
  network id / ssid / bssid / flags
  0 example network any [CURRENT]
  (note: fields are separated with tabs)
  SCAN
  Request a new BSS scan.
  Realtek
  SCAN_RESULTS
  Get the latest scan results.
  bssid / frequency / signal level / flags / ssid
  00:09:5b:95:e0:4e 2412 208 [WPA-PSK-CCMP] jkm private
  02:55:24:33:77:a3 2462 187 [WPA-PSK-TKIP] testing
  00:09:5b:95:e0:4f 2412 209 jkm guest
  (note: fields are separated with tabs)
  ADD_NETWORK
  Add a new network. This command creates a new network with empty configuration. The new network is
  disabled and once it has been configured it can be enabled with ENABLE_NETWORK command. ADD_-
  NETWORK returns the network id of the new network or FAIL on failure
  SELECT_NETWORK <network id>
  Select a network (disable others). Network id can be received from the LIST_NETWORKS command
  output.
  ENABLE_NETWORK <network id>
  Enable a network. Network id can be received from the LIST_NETWORKS command output.
  DISABLE_NETWORK <network id>
  Disable a network. Network id can be received from the LIST_NETWORKS command output. Special
  network id all can be used to disable all network.
  .
  REMOVE_NETWORK <network id>
  Remove a network. Network id can be received from the LIST_NETWORKS command output. Special
  network id all can be used to remove all network.
  SET_NETWORK <network id> <variable> <value>
  Set network variables. Network id can be received from the LIST_NETWORKS command output.
  This command uses the same variables and data formats as the configuration file.
  • ssid (network name, SSID)
  • psk (WPA passphrase or pre-shared key)
  • key_mgmt (key management protocol, NONE, WPA-PSK, WPA-EAP)
  • proto ( WPA WPA2)
  • pairwise ( CCMP TKIP)
  • group ( CCMP TKIP WEP40 WEP104)
  • wep_key0 ( set wep key for key index 0)
  • wep_tx_keyidx ( select wep key index)
  • frequency ( Channel frequency in megahertz (MHz) for IBSS )
  GET_NETWORK <network id> <variable>
  Get network variables. Network id can be received from the LIST_NETWORKS command output.
  SAVE_CONFIG
  Save the current configuration.
  Realtek
  AP_SCAN <ap_scan value>
  Change ap_scan value: 0 = no scanning, 1 = wpa_supplicant requests scans and uses scan results to select
  the AP, 2 = wpa_supplicant does not use scanning and just requests driver to associate and take care of AP
  selection
";i:1;s:4:"bash";i:2;N;}i:2;i:222;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9997;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9997;}}