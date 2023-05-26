# Android Development Environment on Mac

I recommend installing most of your tools using [Hombrew](https://brew.sh/). However, it is 
not as simple as typing `brew install android` and be done. To truly optimize 
your system there is a lot of clean up you must do.

Android Studio installs the Android SDK and JDK (Java Development Kit). These
are very large libraries and take up a lot of valuable space when installed. 
If you install Java, Android Studio and the Android SDK using brew, you 
could end up with multiple copies of everything.

## Java

I now recommend using the embedded JDK that comes with Android Studio. Using your own could cause issues.

## Android

1. Install Android SDK

`brew cask install android-sdk`

2. Install Android NDK

`brew cask install android-ndk`

3. Install Android Studio

`brew cask install android-studio`

4. Set environment variables in your shell config (.bash_profile, .zshrc)

```
export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`
export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

export ANT_HOME=/usr/local/opt/ant/libexec
export GRADLE_HOME=/usr/local/bin/gradle
export GROOVY_HOME=/usr/local/opt/groovy/libexec

export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/26.0.0:$PATH
```

5. Add platforms to your Android SDK

```
sdkmanager --list
sdkmanager "platforms;android-25"
sdkmanager "platforms;android-26"
sdkmanager --update
```

## Configure Android Studio

On the Android Studio welcome menu, before a project is open, in the lower right click Configure, Project Defaults, Project Structure.

If you already have a project open: Under File, Project Settings (Command + ;)

1. Set SDK location

`/usr/local/share/android-sdk`

2. Set JDK location

`/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home`

3. Set NDK location

`/usr/local/share/android-ndk`

## Clean up Android Studio

This will remove the JDK that Android Studio installed. This freed 30 GB of space.

`rm -rf ~/Library/Android`


