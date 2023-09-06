@echo off

rem Set up ADB connection to the device
adb devices

rem List of package names to uninstall
set packages="com.android.chrome" "com.android.deskclock" "com.google.android.apps.docs" "com.google.android.apps.maps" "com.google.android.apps.photos" "com.google.android.apps.tachyon" "com.google.android.apps.subscriptions.red" "com.google.android.music" "com.google.android.videos" "com.google.android.feedback" "com.google.android.youtube" "com.mi.android.globalminusscreen" "com.mi.android.globalFileexplorer" "com.mi.android.globallauncher" "com.mi.globalbrowser" "com.mipay.wallet.in" "com.miui.analytics" "com.miui.backup" "com.miui.bugreport" "com.miui.calculator" "com.miui.cleanmaster" "com.miui.cloudbackup" "com.miui.cloudservice" "com.miui.micloudsync" "com.miui.cloudservice.sysbase" "com.miui.compass" "com.miui.fm" "com.miui.freeform" "com.miui.hybrid" "com.miui.hybrid.accessory" "com.miui.miservice" "com.miui.mishare.connectivity" "com.miui.miwallpaper" "com.miui.msa.global" "com.miui.notes" "com.miui.phrase" "com.miui.player" "com.android.soundrecorder" "com.miui.screenrecorder" "com.miui.touchassistant" "com.miui.videoplayer" "com.miui.weather2" "com.miui.yellowpage" "com.xiaomi.account" "com.xiaomi.calendar" "com.xiaomi.discover" "com.xiaomi.glgm" "com.xiaomi.joyose" "com.xiaomi.midrop" "com.xiaomi.mipicks" "com.xiaomi.miplay_client" "com.xiaomi.mircs" "com.xiaomi.mirecycle" "com.xiaomi.misettings" "com.xiaomi.payment" "com.xiaomi.scanner" "com.xiaomi.xmsf" "com.xiaomi.xmsfkeeper" "com.netflix.partner.activation" "com.netflix.mediaclient" "com.tencent.soter.soterserver" "com.facebook.appmanager" "com.facebook.services" "com.facebook.system" "com.facebook.katana"

rem Loop through the package names and uninstall each one
for %%i in (%packages%) do (
   adb shell pm uninstall --user 0 %%i
