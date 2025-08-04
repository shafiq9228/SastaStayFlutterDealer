# Keep GetX core classes
-keep class io.fotoapparat.** { *; }

# Keep GetX-related classes
-keep class com.getcapacitor.** { *; }
-keep class com.getx.** { *; }
-keep class com.github.getx.** { *; }

# Keep all annotations
-keepattributes *Annotation*

# Prevent warnings
-dontwarn io.fotoapparat.**
-dontwarn com.getx.**
-dontwarn com.github.getx.**
