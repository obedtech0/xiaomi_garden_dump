#!/bin/bash

cat system/system/priv-app/GBoard/GBoard.apk.* 2>/dev/null >> system/system/priv-app/GBoard/GBoard.apk
rm -f system/system/priv-app/GBoard/GBoard.apk.* 2>/dev/null
cat product/app/webview/webview.apk.* 2>/dev/null >> product/app/webview/webview.apk
rm -f product/app/webview/webview.apk.* 2>/dev/null
cat product/priv-app/Settings/Settings.apk.* 2>/dev/null >> product/priv-app/Settings/Settings.apk
rm -f product/priv-app/Settings/Settings.apk.* 2>/dev/null
cat boot.img.* 2>/dev/null >> boot.img
rm -f boot.img.* 2>/dev/null
