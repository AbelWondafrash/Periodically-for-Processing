# Periodically-for-Processing
🎈 A breezy - air light class for Processing that eliminates fundamental issues with the in-built function delay ().

# 🐢 delay () kinda sucks!
A lot actually. Using delay() has usually has unintended sideeffect of freezing everything. Whether you come from Arduino or Processing, it is only on certain situations that delay () becomes useful. In the way it works, Arduino or your Computer does nothing for a while when delay () runs. When it is the case that you want to run multiple indpendent things with their own time, using delay () won't do.

💉 Here's a common trouble with delay (). In Processing, from the time you called delay () to the moment the wait is over, nothing really happens in the code. Just waiting. If you wanted to use delay () for animations, then umm, you kinda can't quite.

🖋 To appreciate the importance of this concept, sketch two circles on your screen write a code to make them appear blinking with differing duration. One with 400 milliseconds and the other with 900. But not one after the other; instead, in their own time.

...

Ya! Not so straight. Perhaps you've used millis in the past and you're used to doing a calculation to determine duration. But with many variables, comes messy code. And the repitition is daunting. So let Periodically do that for you.

Let's solve the above exercise:

```
Periodically blink1;
Periodically blink2;

void setup () {
  blink1 = new Periodically (400);  // 400 milliseconds
  blink2 = new Periodically (900);
}

void draw () {
  background (255);

  fill (#028AF0);
  if (blink1.getState ())
    ellipse (30, 50, 20, 20);
    
  fill (#FCB500);
  if (blink2.getState ())
    ellipse (80, 50, 20, 20);
}
```


# Arduino Version
Click [here](https://github.com/AbelWondafrash/Periodically-for-Arduino) to get Periodically for Arduino.


🛡 So scream "behold!" and turn that delay () infested program into a snappy one. Give it a shot and breeze.
