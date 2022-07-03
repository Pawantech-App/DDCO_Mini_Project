# DDCO_Mini_Project
DESIGN AND IMPLEMENTATION OF A RING AND JOHNSON COUNTER WITH CONTROL LOGIC


ABSTRACT OF THE PROJECT


INTRODUCTION</br>
         Counters are sequential circuits whose function is to count pulse, frequency and time of the signal using a clock signal. They are designed by grouping various flip flops together. Counters operate in different modes of modules, which are represented by the number of states of the cycle. There are two types of counter, they are synchronous and asynchronous counters. The synchronous counter depends on the input clock signal whereas the asynchronous counter does not. The synchronous counter is a shift register counter which is further classified as a ring-type and twisted type ring counter (Johnson counter). 



RING COUNTER 
 ![image](https://user-images.githubusercontent.com/54111265/177044803-3a488a3e-85df-4b64-b2ad-ac9588f316f7.png)
         A ring counter is also known as SISO (serial in serial out) shift register counter where the output of the flip flop is connected to the input of the flip flop. The designing of the ring counter can be done by using four D-Flip Flops with a common clock signal and overriding input can be connected to pre-set and clear. The main function of pre-set and clear is to change the output value when the input clock signal changes. Based on these signals they operate in ring format hence it is called a ring counter. The number of states is the number of flip flops used. Ring counter is a typical application of Shift resister. Ring counter is almost same as the shift counter. The only change is that the output of the last flip-flop is connected to the input of the first flip-flop in case of ring counter but in case of shift resister it is taken as output. Except this all the other things are same.







JOHNSON RING COUNTER 
                                                                                                                        ![image](https://user-images.githubusercontent.com/54111265/177045012-fc7bf4fe-2391-4e85-b8e4-dcae44137c95.png)
The Johnson Ring Counter, also called the Twisted Ring Counter is a shift  register with feedback exactly the same as the standard Ring Counter, except that the inverted output of the last flip-flop is connected back to the input of the first flip-flop. Unlike the standard ring counter, it only needs half the number of flip-flops and its modulo number is halved. So a n-stage Johnson counter will circulate a single bit of data giving a sequence of 2n different states and can therefore be considered as a mod-2n counter. Johnson Ring Counter is nothing but Johnson Counter. The Johnson Ring Counter consists of a number of counters connected together with the output fed back to the input.


WORKING

RING COUNTER 
	Consider QA, QB, QC, QD as the 4 bits of the ring counter. The truth table for the 4-bit ring counter is given below.
![image](https://user-images.githubusercontent.com/54111265/177045050-8c6d44a2-c174-4ac3-a0d9-d0cb01dc475b.png)


   In the ring counter, logic ‘1’ flows through all stages of the counter. In each state, it flows one bit to the right. When it reaches stage 4, it circulates back to stage 1 of the counter. Ring counter’s state needs to be set before the operation. Since the ring counter circulates 1 through all stages, and there are no external inputs except the clock signal. So we need to set its state to initial state 1000 manually. We set the first stage flip-flop and clear the rest of the stages to obtain the state 1000. The preset input pin is designed to do this function.
 
Whenever the first clock edge hits the counter the outputs of each stage shifts to the next succeeding stage. And the output of the last will shift to the first stage making the state 0100. 
Upon the next clock cycle, each stage will update its state according to its input. So the ‘1’ will be shifted to the third stage making the state 0010. 

Upon another clock cycle, the ‘1’ will reach the last stage making the 0001. 

Now upon the next clock cycle, ‘1’ from the last stage (flip-flop) will shift back to the first stage making the initial state 1000.
 
And it starts again from the first state repeating itself considering the clock signal is provided. 
This is how the data inside the ring counter circulates in the ring. Ring counter divides the frequency of the clock signal by ‘n’ where n is the bit size of the ring counter. So the ring counter can be used as a frequency divider.

JOHNSON COUNTER
	Consider a 4-bit Johnson counter with QA, QB, QC, QD as the output of 4 stages of the counter. The truth table of the 4-bit Johnson counter is given below.


 
![image](https://user-images.githubusercontent.com/54111265/177045068-57dbeb16-7904-49a8-aa69-db8525453af8.png)


   The output of each flip-flop is connected with the input of the succeeding flip-flop. The complemented output of the last flip-flop is connected with the input of the first flip-flop. It is also called the Inverse Feedback Counter or Twisted Ring Counter. The Same clock input is connected with all flip-flops. There is clear input for resetting the state to default 0000. 

The default state of Johnson counter is 0000 thus before starting the clock input we need to clear the counter using clear input. 

Whenever a clock edge hits the counter the output of each flip-flop will transfer to the next stage (flip-flop) but the inverted output of the last flip-flop will shift to the first stage making the state 1000. 

Upon the next clock cycle, another ‘1’ will stack in from the left side as the inverted output of the last stage will be shifted to the first stage. 

On the next clock cycle, another ‘1’ will add in from the left until the state becomes 1111. 
Now that the last flip-flop’s output is ‘1’, the next clock cycle will shift the invert of the last flip-flop which is ‘0’ into the first flip-flop. It will result in stacking ‘0’ from the left side. This stacking of the first 0 will make the state 1111 into 0111. 

The next coming clock cycles will stack in the 0's from the left making the states 0011, 0001 & 0000 respectively with each clock cycle. 

Eventually, it reaches its default state and it starts from the beginning again. Hence in a four-bit counter, with initial register values of 0000, the repeating pattern is: 0000, 1000. 1100, 1110, 1111, 0111, 0011, 0001, 0000….




CIRCUIT DIAGRAM


RING COUNTER
 ![image](https://user-images.githubusercontent.com/54111265/177045083-7973fa7d-1ece-4832-a12e-7f21033769d2.png)


JOHNSON COUNTER
 
![image](https://user-images.githubusercontent.com/54111265/177045089-8cae1640-84c2-4c53-9cfa-d8eda322e6d4.png)



SCREEN SHOT OF THE OUTPUT

RING COUNTER
![image](https://user-images.githubusercontent.com/54111265/177045112-4061b7bf-325b-49d5-b7dc-4cceb6e28b00.png)

COMMAND PROMPT:

 ![image](https://user-images.githubusercontent.com/54111265/177045116-07c77e2a-16b4-4dc8-8289-16c53ac39229.png)

 

GTKWAVEFORM:

 
		
JOHNSON COUNTER

COMMAND PROMPT:
![image](https://user-images.githubusercontent.com/54111265/177045121-df774eaf-1f6e-4c4d-9ced-80cfbec757a8.png)

 


GTKWAVEFORM:
![image](https://user-images.githubusercontent.com/54111265/177045126-9d043ffa-e1ed-43ab-90ae-38b270bfb4a9.png)

