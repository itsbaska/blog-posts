# 04 - 4 Rules of Simple Design

In the late 90s Kent Beck came up with 4 rules of simple design to make our code flexible and clear. Which are in the order of importance: 
  1. Tests Pass
  2. Expresses Intent
  3. No Duplication (DRY) 
  4. Small

### 01 - Tests Pass
Prior to joining the company that I work for, I didn't really understand how to do Test Driven Development. TDD to me was just another buzz word that people kept mentioning to me without explanation. I understood that I should be creating tests along side my code, but not much beyond that. The coding school that I was TAing at barely touched testing at all, and told their students that it was an optional class. So I thought to myself how important could testing be if a whole school that is cranking out hundreds of developers per cohort is ignoring testing. However that was not the case at my current company. After pair programming with my mentor I realized how helpful creating tests can be. In my pairing session my mentor created a test for me to implement the code for, then I would write some code that allowed her test to pass, and then we would switch roles and repeat. The TDD mantra is "red/green/refactor". Red means to create tests that fail, green is to write code that makes the tests pass, and then you are able to refactor the code with sureness that the program will still work. That was my first exerience with TDD. It opened my eyes to how useful testing can be. I was able to change and refactor my code without fear and doubt of breaking it with no going back. Not only did I feel more comfortable with having the tests, I was able to write more code in a shorter time because testing exposed more information about the code, and the different possibilities that I should handle.

### 02 - Expresses Intent
During my bootcamp we had a lot of work to do. If we weren't able to finish them during work hours, we had to get them done at home. I felt like I had no capacity to come up with fitting names, I was never good with words, and I just wanted to get things done. I ended up calling a significant portion of my code as "thing_1", "thing_2", etc. This would not fly in a professional setting, but that was just bootcamp. There was no real client. No one was going to take over my code at some point. And looking back on it the work that we were doing was pretty simple. 

It has been a while since I have been done with my bootcamp, and I have had a lot of time to reflect on my learnings. I realize now that not naming my code for what they are have been a hindrance to my understanding and learning. It is clear now that I wasn't sure about what I was working with and what I was writing. 

To explain more about expressing intent, it could be that originally your code did one thing, and it did reflect the behaviour of that code, but that code can change as we learn more about what it really should be doing. It is important that at this moment of change in the code we don't forget to change the variable name along with it to reflect its action. Having good names also helps us to come back to this code, or anyone else who will be using this codebase in the future to immediately understand what it will do.

Another reason for expressing clear intent in your code is If your structures become larger and you are having difficulty with giving an expressive name, it is an indication that you should refactor your code to be more clear on its behaviour. This will further lead to having smaller and non repetitive code in the future.

### 03 - No Duplication
My first understanding of DRY or Don't Repeat Yourself was a surface level, literal understanding. I would go through my code and remove everything that looked similar. With that I wasn't getting that much duplication removed. With further reading and research I discovered that DRY doesn't just mean removing direct copies of code, but it also means removing behaviour repitition. As Corey Haines mentions in his book, DRY isn't about the code duplication, but more about the knowledge duplication. The DRY principle states "Every piece of knowledge should have one and only one representation." I think this kind of duplication becomes more clear with good naming practices.

### 04 - Small
My understanding of small is that once you have gone through and have applied the rules above, small should naturally happen. Small means having smaller and fewer elements. Looking back at code will give you the opportunity to further remove any code that was unnessasary and unused or repetitive. 

Upon more reading about the 4 Rules of Simple Design, J. B. Rainsberger further explains that it really should be just 2 Rules of Simple Design. According to him Rule 1: Test Passes should be a given and not a rule. Tests should always be written for better code. He also eliminates Rule 4 - Small Elements, as it should occur with a few iterations of expressing intent with naming, and removing duplication.

After reading The 4 Rules of Simple Design, I realized that I could always improve my code with these rules in the back of my head.