package com.example.lab8

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.RadioButton
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun makePizza(view: View) {

        var choice:CharSequence = ""
        var toppings = ""
        var finalmessage:String = ""


        val choiceId = radioGroup.checkedRadioButtonId

        if(choiceId == -1){

            val choiceSnackbar = Snackbar.make(root_layout, "Please select a primary choice!", Snackbar.LENGTH_SHORT)
            choiceSnackbar.show()
//          choiceSnackbar.setBackgroundTint(2)

        } else {
            choice = findViewById<RadioButton>(choiceId).text

            if(checkBox1.isChecked){
                toppings += " " + checkBox1.text
            }
            if(checkBox2.isChecked){
                toppings += " " + checkBox2.text
            }
            if(checkBox3.isChecked){
                toppings += " " + checkBox3.text
            }
            if(checkBox4.isChecked){
                toppings += " " + checkBox4.text
            }
            if(toppings.isNotEmpty()){
                toppings = "with" + toppings
            }

            val size = "" + spinner.selectedItem

            var gluten = ""
            if(switch1.isChecked)
            {
                gluten = "with a " + switch1.text
            }

            textView.text = "A $size $choice pizza $toppings $gluten"

//            fun UpdateUI(){
//                textView.text = finalmessage
//
//            }

//            fun onSaveInstanceState(outState: Bundle) {
//                outState.putString("finalmessage", finalmessage)
//                super.onSaveInstanceState(outState)
//            }
//
//            fun onRestoreInstanceState(savedInstanceState: Bundle) {
//                super.onRestoreInstanceState(savedInstanceState)
//                finalmessage = savedInstanceState.getString("finalmessage", "")
//                UpdateUI()
//            }

        }
    }
}