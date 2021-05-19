//#-hidden-code
import PlaygroundSupport
import Module

let bridge = BridgeViewController()
var Time_per_frame = 0.3

func Bridge_Kickover_Complete(){
    bridge.scene.Bridge_Kickover_Complete()
}

func Hands_in_the_air_facing_left_wall(){
    bridge.scene.Hands_in_the_air_facing_left_wall()
}

func Start_bending_back(){
    bridge.scene.Start_bending_back()
}

func Back_bent_and_first_foot_off_the_ground(){
    bridge.scene.Back_bent_and_first_foot_out_of_the_ground()
}

func Hands_on_the_ground_one_foot_in_the_air_and_the_other_starting_to_push_the_ground(){
    bridge.scene.Hands_on_the_ground_and_one_foot_in_the_air()
}

func Hands_on_the_ground_and_both_feet_in_the_air(){
    bridge.scene.Hands_on_the_ground_and_both_feet_in_the_air()
}

func Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_following(){
    bridge.scene.Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_arriving()
}

func Execute(){
    bridge.scene.exec()
}

PlaygroundPage.current.setLiveView(bridge)
//#-end-hidden-code
/*:
 # Bridge Kickover
 
 Now, we have the most difficult movement called the Bridge Kickover. What we’ll have to do is:

1. Put our hands in the air and face the left wall
2. Start to bend our backs and raise one of our legs
3. Continue to bend our backs and try to reach the ground with our hands with one of our legs in the air
4. Start to push the ground with the leg that's still there
5. Stand on our hands with our legs open in the air
6. Have one leg on the ground and the other one following
7. Stand up with our hands in the air and face the same side as we did in the beginning
* * * * * 
 Now you already know the dynamics, right? You can see the complete movement with the function **Bridge_Kickover_Complete()**.
 
 You can adjust the time of each step with the variable **Time_per_frame**.
 
 And then you can try building the movement step by step with each one of the separate functions, without forgetting to erase the complete function and to put the **Execute()** function when you’re doing it this way.

 Remember that every time you want to test something you must press **"Run my code"**!*/
Time_per_frame = /*#-editable-code*/0.3/*#-end-editable-code*/
//#-hidden-code
bridge.scene.Time_per_frame = Time_per_frame
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier,show, Bridge_Kickover_Complete(), Hands_in_the_air_facing_left_wall(), Start_bending_back(), Back_bent_and_first_foot_off_the_ground(), Hands_on_the_ground_one_foot_in_the_air_and_the_other_starting_to_push_the_ground(), Hands_on_the_ground_and_both_feet_in_the_air(), Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_following(), Hands_in_the_air_facing_left_wall(), Execute())
/*#-editable-code Complete function*/Bridge_Kickover_Complete()/*#-end-editable-code*/

/*#-editable-code Choose the first step*//*#-end-editable-code*/
/*#-editable-code Choose the second step*//*#-end-editable-code*/
/*#-editable-code Choose the third step*//*#-end-editable-code*/
/*#-editable-code Choose the fourth step*//*#-end-editable-code*/
/*#-editable-code Choose the fifth step*//*#-end-editable-code*/
/*#-editable-code Choose the sixth step*//*#-end-editable-code*/
/*#-editable-code Choose the seventh step*//*#-end-editable-code*/
/*#-editable-code Execution function *//*#-end-editable-code*/

/*:
 Now you have a better ideia of how some of Gymnastics movements are done. I really hope you had fun trying to reproduce them!! */
