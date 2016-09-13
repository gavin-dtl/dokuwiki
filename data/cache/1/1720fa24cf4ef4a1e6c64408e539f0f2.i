a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"android 启动应用";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:810:"
	ResolveInfo res = mAllApps.get(position); //get packagename and activity 
	String pkg = res.activityInfo.packageName ; 
	String cls = res.activityInfo.name ; 
	ComponentName mComponentName = new ComponentName(pkg, cls); 
	
	Intent intent = new Intent(); 
	intent.addCategory(Intent.CATEGORY_LAUNCHER); 
	intent.setComponent(mComponentName); 
	intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED | Intent.FLAG_ACTIVITY_CLEAR_TOP) ;
	startActivity(intent);
	
	Intent intent = new Intent(); 
	PackageManager packageManager = this.getPackageManager();
	intent = packageManager.getLaunchIntentForPackage(packageName); 				
	intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED | Intent.FLAG_ACTIVITY_CLEAR_TOP) ;
	this.startActivity(intent);
";i:1;s:4:"java";i:2;N;}i:2;i:40;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:40;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:166:"无此参数，不能启动已启动应用
intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED | Intent.FLAG_ACTIVITY_CLEAR_TOP) ;";}i:2;i:865;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1031;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1032;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1032;}}