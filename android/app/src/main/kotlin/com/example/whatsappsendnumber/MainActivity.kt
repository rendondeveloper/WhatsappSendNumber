package com.example.whatsappsendnumber

import android.os.Bundle
import android.view.View
import android.widget.FrameLayout
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : FlutterActivity() {
    var flutterUIReady: Boolean = false


    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)

        // This activity will be handling the splash screen transition.
        val splashScreen = installSplashScreen()

        WindowCompat.setDecorFitsSystemWindows(window, false)
        val insetsController = WindowCompat.getInsetsController(window, window.decorView)
        insetsController?.isAppearanceLightNavigationBars = true
        insetsController?.isAppearanceLightStatusBars = true

        // The content view needs to be set before calling setOnExitAnimationListener
        // to ensure that the SplashScreenView is attached to the right view root.
        val rootLayout = findViewById<FrameLayout>(android.R.id.content)
        View.inflate(this, R.layout.main_activity, rootLayout)

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.container)) { view, windowInsets ->
            val insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars())
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom)
            windowInsets.inset(insets)
        }
    }

    override fun onFlutterUiDisplayed(){
        flutterUIReady = true
    }

    override fun onFlutterUiNoLongerDisplayed(){
        flutterUIReady = false
    }
}
