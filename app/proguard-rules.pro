# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\proger\AppData\Local\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-keepclasseswithmembernames class * {
    native <methods>;
}  


-dontwarn com.squareup.picasso.**
-dontwarn org.apache.http.*
-dontwarn com.google.common.**

-dontwarn okio.**

-keep class org.apache.http.** {*;}

-keepattributes Signature


# Gson specific classes
-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { *; }


# OkHttp
-keep class java.nio.file.** { *; }
-keep class org.codehaus.mojo.animal_sniffer.** { *; }