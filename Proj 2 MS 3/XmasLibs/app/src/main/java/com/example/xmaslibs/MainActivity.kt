package com.example.xmaslibs

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.view.View
import android.widget.RadioButton
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*


class MainActivity : AppCompatActivity() {

    var locMessage: String=""
    var xmasStory: String=""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun story(view: View) {

        val locChoice = radioGroup.checkedRadioButtonId

        var drink = editDrink.text
        var name = editName.text
        var noun = editNoun.text
        var adjective = editAdjective.text
        var place = editPlace.text
        var thing = editThing.text

        //snackbars

        if (adjective.isEmpty() || drink.isEmpty() || name.isEmpty() || noun.isEmpty() || place.isEmpty() || thing.isEmpty()){
            val wordSnackbar = Snackbar.make(layout, "Please fill out all text fields!", Snackbar.LENGTH_SHORT)
            wordSnackbar.show()
        }

        if(locChoice == -1) {

            val choiceSnackbar = Snackbar.make(layout, "Please select a location!", Snackbar.LENGTH_SHORT)
            choiceSnackbar.show()

        } else {

            var storyT = ""
            if (radio1.isChecked) {

                //santa's sleigh
                storyT = "Santa's sleigh was stolen by Jack Frost, who hates Christmas and Santa. Jack Frost runs into a young child named, $name in $place as he was trying to hide the sleigh -- there are millions of $noun in $place (he's sure he can hide it). $name questions his motives and eventually decides that it is necessary to save Christmas, but not without the help of Vixen (the reindeer) who can sniff out the sleigh with the help of some magic $drink. They became a/an $adjective pair but eventually save Christmas. Santa then gifts $name a $thing."
            }
            if (radio2.isChecked) {

                //the north pole
                storyT = "One $adjective morning at the North Pole, Santa, Mrs.Claus, and $name woke up and decided to bake some $noun and drink some $drink. The weather is always cold at the North Pole, so Santa and Mrs.Claus like to vacation at $place, especially since there is no land at the North Pole, just $thing. This vacation helps Santa spread more holiday cheer around the world."

            }
            if (radio3.isChecked) {

                //elves workshop
                storyT = "There are countless elves that work in the workshop with Santa. Elves are very special and come from $place. All of the elves make all kinds of toys. One elf, named $name, makes $adjective toys.  $name's favorite toy to make is a $noun. The elves love to eat cookies and drink $drink while working. They love being elves and think it is the best $thing in the whole world."
            }

            storyText.text = storyT
            xmasStory = storyT

        }

     }

    //onclick functions for resetting the text fields and story as different locations are chosen

    fun sleigh(view: View) {

        locMessage = "Santas Sleigh"
        updateUI()
       // locationTextView.text = "Santas Sleigh"
        editDrink.text.clear()
        editName.text.clear()
        editAdjective.text.clear()
        editNoun.text.clear()
        editPlace.text.clear()
        editThing.text.clear()
        storyText.text = ""
    }

    fun pole(view: View) {

        locMessage = "North Pole"
        updateUI()
       // locationTextView.text = "North Pole"
        editDrink.text.clear()
        editName.text.clear()
        editAdjective.text.clear()
        editNoun.text.clear()
        editPlace.text.clear()
        editThing.text.clear()
        storyText.text = ""
    }

    fun elf(view: View) {

        locMessage = "Elves Workshop"
        updateUI()
        // locationTextView.text = "Elves Workshop"
        editDrink.text.clear()
        editName.text.clear()
        editAdjective.text.clear()
        editNoun.text.clear()
        editPlace.text.clear()
        editThing.text.clear()
        storyText.text = ""
    }

    //saved state

    fun updateUI(){
        locationTextView.text = locMessage
        storyText.text = xmasStory
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putString("locmessage", locMessage)
        outState.putString("storytext", xmasStory)
        super.onSaveInstanceState(outState)
    }

    override fun onRestoreInstanceState(savedInstanceState: Bundle) {
        super.onRestoreInstanceState(savedInstanceState)
        locMessage = savedInstanceState.getString("locmessage", "")
        xmasStory = savedInstanceState.getString("storytext", "")
        updateUI()
    }



}











