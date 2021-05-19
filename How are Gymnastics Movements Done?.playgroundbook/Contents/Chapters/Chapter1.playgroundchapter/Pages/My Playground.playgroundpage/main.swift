//#-hidden-code
import PlaygroundSupport
import Module

let cartwheel = CartwheelViewController()
var Time_per_frame = 0.4

func Cartwheel_Complete(){
    cartwheel.scene.Cartwheel_Complete()
}

func Hands_in_the_air_facing_right_wall(){
    cartwheel.scene.Hands_in_the_air_facing_right_wall()
}

func Hands_meeting_the_ground_and_one_foot_in_the_air(){
    cartwheel.scene.Hands_arriving_on_the_ground_and_one_foot_in_the_air()
}

func Hands_on_the_ground_and_both_feet_in_the_air(){
    cartwheel.scene.Hands_on_the_ground_and_both_feet_in_the_air()
}

func Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_following(){
    cartwheel.scene.Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_arriving()
}

func Hands_in_the_air_facing_left_wall(){
    cartwheel.scene.Hands_in_the_air_facing_left_wall()
}

func Execute(){
    cartwheel.scene.exec()
}

PlaygroundPage.current.setLiveView(cartwheel)
//#-end-hidden-code
/*:
 # Cartwheel

 The first one that I learned, was the Cartwheel 🤸🏽‍♀️. On the Cartwheel what we'll have to do is:

1. Put our hands in the air and face the right wall
2. Put our hands on the ground and start to raise our non-dominant leg
3. Have our hands on the ground and legs open in the air
4. Have one leg on the ground and the other one following
5. Put our hands in the air and face the opposite direction from which we began
* * * * *
 Now it’s your turn! Try to reproduce the movement step by step by putting the functions in the right order, and afterward press **"Run my code"**.
 
 In case you have any questions, you can run the complete movement with the complete function **Cartwheel_Complete()**.

 If you want to see the step by step movement more slowly, you can change the time (in seconds) in the variable **Time_per_frame** and afterward run the complete function.
 
 And make sure that you don’t forget something really important when you’re going to run the movement step by step: do not use the complete function and don't forget to put the **Execute()** function in your code.

 Remember that every time you want to test something you must press **"Run my code"**.*/
Time_per_frame = /*#-editable-code*/0.4/*#-end-editable-code*/
//#-hidden-code
cartwheel.scene.Time_per_frame = Time_per_frame
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier,show, Cartwheel_Complete(), Hands_in_the_air_facing_right_wall(), Hands_meeting_the_ground_and_one_foot_in_the_air(), Hands_on_the_ground_and_both_feet_in_the_air(), Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_following(), Hands_in_the_air_facing_left_wall(), Execute())
/*#-editable-code Complete function*/Cartwheel_Complete()/*#-end-editable-code*/

/*#-editable-code Choose the first step*//*#-end-editable-code*/
/*#-editable-code Choose the second step*//*#-end-editable-code*/
/*#-editable-code Choose the third step*//*#-end-editable-code*/
/*#-editable-code Choose the fourth step*//*#-end-editable-code*/
/*#-editable-code Choose the fifth step*//*#-end-editable-code*/
/*#-editable-code Execution function *//*#-end-editable-code*/

/*:
 Let’s try another one on the [next page](@next)!*/
