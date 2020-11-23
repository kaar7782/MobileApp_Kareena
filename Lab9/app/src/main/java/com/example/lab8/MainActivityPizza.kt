package com.example.lab8

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.util.Log
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.snackbar.Snackbar
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.content_main_activity_pizza.*

class MainActivityPizza : AppCompatActivity() {

    private var pizzaPref : String? = null
    private var pizzaURL : String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_pizza)
        setSupportActionBar(findViewById(R.id.toolbar))

        pizzaPref = intent.getStringExtra("pizzaPref")
        pizzaURL = intent.getStringExtra("pizzaURL")

        pizzaPref?.let { Log.i("pref received", it)};
        pizzaURL?.let {Log.i("url received", it)};

        pizzaPref?.let {suggestPrefTextView.text = "You should get a $pizzaPref pizza" };

        findViewById<FloatingActionButton>(R.id.fab).setOnClickListener { view ->
            Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                .setAction("Action", null).show()
        }

    }

    override fun onBackPressed() {
        val data = Intent()
        data.putExtra("special instructions", otherPrefEditText.text.toString())
        setResult(Activity.RESULT_OK, data)
        super.onBackPressed()
        finish()
    }
}