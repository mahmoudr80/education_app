import java.util.Properties
plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
val keystorePropertiesFile = rootProject.file("key.properties")
val keystoreProperties = Properties()
keystoreProperties.load(keystorePropertiesFile.inputStream())
android {

    namespace = "com.example.education_app"

    compileSdk = 34

    defaultConfig {
        applicationId = "com.example.education_app"
        minSdk = flutter.minSdkVersion
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    splits {
        abi {
            isEnable = false
        }
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }



    signingConfigs {
        create("release") {
            storeFile = file(keystoreProperties["storeFile"] as String)
            storePassword = keystoreProperties["storePassword"] as String
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }
}

flutter {
    source = "../.."
}
