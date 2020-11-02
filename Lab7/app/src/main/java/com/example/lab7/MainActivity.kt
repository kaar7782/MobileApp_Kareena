package com.example.lab7

import android.media.Image
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun allDone(view: View) {
        val chooseText = findViewById<TextView>(R.id.textView2)

        val editName = findViewById<EditText>(R.id.editTextName)
        val name = editName.text

        chooseText.setText("Hi " + name + "! Choose a Holiday.")
    }

    fun sayHalloween(view: View) {
        val booText = findViewById<TextView>(R.id.textH)
        booText.setText("Happy Halloween!")

        val imageBoo = findViewById<ImageView>(R.id.imageH)
        imageBoo.setImageResource(R.drawable.boo)
    }
    fun sayXmas(view: View) {
        val xmasText = findViewById<TextView>(R.id.textC)
        xmasText.setText("Merry Christmas!")

        val imageXmas = findViewById<ImageView>(R.id.imageH)
        imageXmas.setImageResource(R.drawable.xmas)
    }


}