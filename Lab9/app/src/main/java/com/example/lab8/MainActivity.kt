package com.example.lab8

import android.app.Activity
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.RadioButton
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    private var myPizzaPref = pizzaParty();
    private var selectedPosition = 0
    private val REQUEST_CODE = 1

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        prefButton.setOnClickListener {
            selectedPosition = spinner4.selectedItemPosition
            myPizzaPref.firstPizzaName(selectedPosition)
            Log.i("pref suggested", myPizzaPref.name);
            Log.i("url suggested", myPizzaPref.url);

            val intent = Intent(this, MainActivityPizza::class.java)
            intent.putExtra("pizzaPref", myPizzaPref.name)
            intent.putExtra("pizzaURL", myPizzaPref.url)

            startActivityForResult(intent, REQUEST_CODE)
        }

    }

    fun makePizza(view: View) {

        var choice:CharSequence = ""
        var toppings = ""
//        var finalmessage:String = ""

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

//            var gluten = ""
//            if(switch1.isChecked)
//            {
//                gluten = "with a " + switch1.text
//            }
//
             textView.text = "A $size $choice pizza $toppings"

        }
    }
    override fun onActivityResult(requestCode:Int, resultCode: Int, data: Intent?){
        super.onActivityResult(requestCode, resultCode, data)
        if((requestCode == REQUEST_CODE) && (resultCode == Activity.RESULT_OK)){
            revtextView2.setText(data?.let{data.getStringExtra("special instructions")})
        }
    }
}