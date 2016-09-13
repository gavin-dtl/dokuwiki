a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"禁止屏幕旋转";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:33;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:33;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:33;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:" base/services/core/java/com/android/server/wm/WindowManagerService.java";}i:2;i:37;}i:7;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:109;}i:8;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:109;}i:9;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:109;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:676:"
boolean updateOrientationFromAppTokensLocked(boolean inTransaction) {
        long ident = Binder.clearCallingIdentity();
        try {
            int req = getOrientationFromWindowsLocked();
            if (req == ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED) {
                req = getOrientationFromAppTokensLocked();
            }
+           // 锁定横屏
+           /* req = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE; */
+           // 锁定竖屏
+           /* req = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT; */
            req = ActivityInfo.SCREEN_ORIENTATION_USER;

            if (req != mForcedAppOrientation) {
                mForcedAppOrientation = req;
";i:1;s:3:"cpp";i:2;N;}i:2;i:115;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:115;}i:12;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:819;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"-";}i:2;i:822;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:824;}i:15;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:824;}i:16;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:824;}i:17;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:824;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"android\frameworks\base\core\java\android\content\pm\PackageParser.java";}i:2;i:828;}i:19;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:899;}i:20;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:899;}i:21;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:899;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:239:"
-	a.info.screenOrientation = sa.getInt(
-	com.android.internal.R.styleable.AndroidManifestActivity_screenOrientation,
-  	ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED);
+	a.info.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
";i:1;s:4:"java";i:2;N;}i:2;i:905;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1157;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1157;}}