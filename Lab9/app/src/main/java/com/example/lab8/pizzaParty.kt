package com.example.lab8

data class pizzaParty(var name:String = "", var url:String = "") {
    fun firstPizzaName(position: Int){
        setPizzalUrl(position)
        setPizzaPref(position)
    }

    private fun setPizzaPref(position: Int) {
        when (position){
            0 -> name = "no gluten"
            1 -> name = "no dairy"
            2 -> name = "no sauce"
            else -> name = "Your own preferences"
        }
    }

//    private fun setPizzaNme(position: Int) {
//        when(position) {
//            0 -> name = "Meat Lovers Pizza"
//            1 -> name = "Veggie Only Pizza"
//            2 -> name = "Hawaiian Pizza"
//            else -> name = "Choose your own preferences"
//        }
//    }

    private fun setPizzalUrl(position: Int) {
        when (position) {
//            0 -> url = "https://www.papajohns.com/order/menu/pizza/cyo?displayNutritionalInfo=false"
//            1 -> url = "https://www.papajohns.com/order/menu/pizza/cyo?displayNutritionalInfo=false"
//            2 -> url = "https://www.papajohns.com/order/menu/pizza/cyo?displayNutritionalInfo=false"
            else -> url= "https://www.papajohns.com/order/menu/pizza/cyo?displayNutritionalInfo=false"
        }
    }


}