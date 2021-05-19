//#-hidden-code
import PlaygroundSupport
import Module

let roundoff = RoundoffViewController()
var Time_per_frame = 0.3

func Roundoff_Complete(){
    roundoff.scene.Roundoff_Complete()
}

func Hands_in_the_air_facing_right_wall(){
    roundoff.scene.Hands_in_the_air_facing_right_wall()
}

func Hands_on_the_ground_and_one_foot_in_the_air(){
    roundoff.scene.Hands_arriving_on_the_ground_and_one_foot_in_the_air()
}

func Hands_on_the_ground_and_legs_partially_open_in_the_air(){
    roundoff.scene.Hands_on_the_ground_and_legs_kind_of_open_in_the_air()
}

func Hands_on_the_ground_and_legs_closed_in_the_air(){
    roundoff.scene.Hands_on_the_ground_and_legs_closed_together_in_the_air()
}

func No_limbs_on_the_ground_and_legs_closed(){
    roundoff.scene.No_limbs_on_the_ground_and_legs_closed_together()
}

func Hands_in_the_air_facing_left_wall(){
    roundoff.scene.Hands_in_the_air_facing_left_wall()
}

func Execute(){
    roundoff.scene.exec()
}
PlaygroundPage.current.setLiveView(roundoff)
//#-end-hidden-code
/*:
 # Roundoff
 
 Now we’re going to try a Roundoff. A Roundoff is very similar to a Cartwheel. So, what we'll have to do is:

1. Put our hands in the air and face the right wall
2. Put our hands on the ground and raise our non-dominant leg
3. Stand on our arms with our legs, partially open in the air
4. Close our legs
5. Make a strong push with our arms and be completely in the air
6. Stand up with our hands in the air and face the opposite direction from which we began
 * * * * *
 Let’s try it! The dynamic is the same as with the Cartwheel, we have the complete function **Roundoff_Complete()** which will show the complete movement.
 
 In case you want to see it step by step more slowly you can adjust the time in the variable **Time_per_frame**.
 
 And finally, build the movement step by step with the functions, and don’t forget to erase the complete function and to put the **Execute()** function before running it step by step.

 Remember that every time you want to test something, to press **"Run my code"**!*/
Time_per_frame = /*#-editable-code*/0.3/*#-end-editable-code*/
//#-hidden-code
roundoff.scene.Time_per_frame = Time_per_frame
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier,show, Roundoff_Complete(), Hands_in_the_air_facing_right_wall(), Hands_on_the_ground_and_one_foot_in_the_air(), Hands_on_the_ground_and_legs_partially_open_in_the_air(), Hands_on_the_ground_and_legs_closed_in_the_air(), No_limbs_on_the_ground_and_legs_closed(), Hands_in_the_air_facing_left_wall(), Execute())
/*#-editable-code Complete function*/Roundoff_Complete()/*#-end-editable-code*/

/*#-editable-code Choose the first step*//*#-end-editable-code*/
/*#-editable-code Choose the second step*//*#-end-editable-code*/
/*#-editable-code Choose the third step*//*#-end-editable-code*/
/*#-editable-code Choose the fourth step*//*#-end-editable-code*/
/*#-editable-code Choose the fifth step*//*#-end-editable-code*/
/*#-editable-code Choose the sixth step*//*#-end-editable-code*/
/*#-editable-code Execution function*//*#-end-editable-code*/

/*:
 Let’s try a more challenging one on the [next page](@next) now!*/
