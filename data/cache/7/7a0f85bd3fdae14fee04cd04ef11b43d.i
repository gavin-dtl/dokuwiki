a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:48:"音量加减键修改为默认控制媒体音量";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:62;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"实现原理";i:1;i:3;i:2;i:62;}i:2;i:62;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:62;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:84;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:84;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:84;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" 按键所对应的默认音频数据流从来电数据流改为音乐数据流";}i:2;i:88;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:167;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:167;}i:12;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:167;}i:13;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:168;}i:14;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:168;}i:15;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:168;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:" ./frameworks/base/packages/SystemUI/src/com/android/systemui/volume/VolumePanel.java";}i:2;i:172;}i:17;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:257;}i:18;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:257;}i:19;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:257;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1577:"
    protected void onShowVolumeChanged(int streamType, int flags, MediaController controller) {
        int index = getStreamVolume(streamType);

        mRingIsSilent = false;

        if (LOGD) {
            Log.d(mTag, "onShowVolumeChanged(streamType: " + streamToString(streamType)
                    + ", flags: " + flagsToString(flags) + "), index: " + index);
        }

        // get max volume for progress bar

        int max = getStreamMaxVolume(streamType);
        StreamControl sc = mStreamControls.get(streamType);

        switch (streamType) {

            case AudioManager.STREAM_RING: {
                Uri ringuri = RingtoneManager.getActualDefaultRingtoneUri(
                        mContext, RingtoneManager.TYPE_RINGTONE);
                if (ringuri == null) {
                    mRingIsSilent = true;
                }
                break;
            }

            case AudioManager.STREAM_MUSIC: {
                // Special case for when Bluetooth is active for music
                if ((mAudioManager.getDevicesForStream(AudioManager.STREAM_MUSIC) &
                        (AudioManager.DEVICE_OUT_BLUETOOTH_A2DP |
                        AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES |
                        AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER)) != 0) {
                    setMusicIcon(IC_AUDIO_BT, IC_AUDIO_BT_MUTE);
                } else {
                    setMusicIcon(IC_AUDIO_VOL, IC_AUDIO_VOL_MUTE);
                }
                break;
            }

            case AudioManager.STREAM_VOICE_CALL: {
";i:1;s:3:"cpp";i:2;N;}i:2;i:263;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1611:"
     9 --- a/frameworks/base/media/java/android/media/AudioService.java
     10 +++ b/frameworks/base/media/java/android/media/AudioService.java
     11 @@ -3282,15 +3282,16 @@ public class AudioService extends IAudioService.Stub {
     12                      return AudioSystem.STREAM_VOICE_CALL;
     13                  }
     14              } else if (suggestedStreamType == AudioManager.USE_DEFAULT_STREAM_TYPE) {
     15 -                if (isAfMusicActiveRecently(StreamOverride.sDelayMs)) {
     16 +                return AudioSystem.STREAM_MUSIC;
     17 +                /* if (isAfMusicActiveRecently(StreamOverride.sDelayMs)) {
     18                      if (DEBUG_VOL)
     19                          Log.v(TAG, "getActiveStreamType: Forcing STREAM_MUSIC stream active");
     20                      return AudioSystem.STREAM_MUSIC;
     21 -                    } else {
     22 -                        if (DEBUG_VOL)
     23 -                            Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING b/c default");
     24 -                        return AudioSystem.STREAM_RING;
     25 -                }
     26 +                } else {
     27 +                    if (DEBUG_VOL)
     28 +                        Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING b/c default");
     29 +                    return AudioSystem.STREAM_RING;
     30 +                } */
     31              } else if (isAfMusicActiveRecently(0)) {
     32                  if (DEBUG_VOL)
     33                      Log.v(TAG, "getActiveStreamType: Forcing STREAM_MUSIC stream active");

";i:1;s:3:"cpp";i:2;N;}i:2;i:1859;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3482;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3482;}}