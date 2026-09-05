import java.util.Properties

plugins {
    alias(libs.plugins.androidApplication)
    alias(libs.plugins.composeCompiler)
}

android {
    namespace = "com.tb710fu.hdrfix"
    compileSdk = 37

    signingConfigs {
        create("release") {
            val props = Properties()
            val pf = rootProject.file("local.properties")
            if (pf.exists()) pf.inputStream().use { props.load(it) }
            props.getProperty("storeFile")?.let { storeFile = file(it) }
            storePassword = props.getProperty("storePassword", "")
            keyAlias = props.getProperty("keyAlias", "")
            keyPassword = props.getProperty("keyPassword", "")
            enableV2Signing = true
            enableV3Signing = true
        }
    }

    defaultConfig {
        applicationId = "com.tb710fu.hdrfix"
        minSdk = 26
        targetSdk = 34
versionCode = 33
versionName = "1.0.0-20260905"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            signingConfig = signingConfigs.getByName("release")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildFeatures {
        compose = true
        buildConfig = true
    }

    packaging {
        resources.excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
    }
}

dependencies {
    // Compile-time stubs for the legacy Xposed API; the real implementation is
    // injected by LSPosed at runtime. Never packaged into the APK.
    compileOnly(files("libs/xposed-stubs.jar"))

    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.core.ktx)
    implementation(platform(libs.compose.bom))
    implementation(libs.compose.ui)
    implementation(libs.compose.foundation)
    implementation(libs.compose.material3)
    implementation(libs.miuix.ui)
    implementation(libs.miuix.preference)
    implementation(libs.miuix.icons)
}
