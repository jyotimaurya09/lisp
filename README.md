# lisp
This Repository Contains programs written in *LISP* programming language


|  | Details |
| ----------- | ----------- |
| Author | Jyoti Maurya |
| Course | MCS-109 AI based Programming Tools |
| University | Indira Gandhi Delhi Technical University for Women |

Following Prolog Programs are part of this Repo
1. LISP function to compute the nth Fibonacci number 
2. LISP Program to implement Pattern Matching Concept
3. LISP Program to Solve Farmer, wolf, goat, cabbage Problem

## LISP function to compute the nth Fibonacci number 
The Fibonacci Sequence is the series of numbers:
Fibonacci Sequence:    0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
fib(0) = 0
fib(1) = 1
fib(n) = fib(n-2) + fib(n-1)

The next number is found by adding up the two numbers before it:
- the 2 is found by adding the two numbers before it (1+1),
- the 3 is found by adding the two numbers before it (1+2),
- the 5 is (2+3),
- and so on!

Algo
- Base case: The first two Fibonacci numbers (indices 1 and 2) are 1 by definition.
- If n <= 2: then return 1
Else return the sum of the results of calling fibonacci(n-1) and fibonacci(n-2).


## LISP Program to implement Pattern Matching Concept
Pattern matching is the process of checking whether a specific sequence of characters/tokens/data exists among the given data.

Pattern matching is used to determine whether source files of high-level languages are syntactically correct. It is also used to find and replace a matching pattern in a text or code with another text/code. Any application that supports search functionality uses pattern matching in one way or another.Pattern matching is an Important AI Methodology

In LISP Pattern Matching:
- Match function-gets two arguments (symbolic-expressions) as input, returns t if expression match
- Matching requires that both expressions have same structures and identical atoms in corresponding positions
- It allows Inclusion of variables (?) in S-Expression
- ? Allowed to match with any S-Expression and returns true(t)

Match Function
 We can write match function to compare patterns of two lists. In our program we have match and match atom both.




## LISP Program to Solve Farmer, wolf, goat, cabbage Problem

A Farmer with his wolf, goat, and cabbage arrives at the bank of a river. A boat at the river’s edge is only large enough for the farmer and one of his possessions. 
The Farmer cannot leave the wolf alone with the goat, or the goat alone with the cabbage. 

To write an optimal solution to help a farmer cross the river with all of his possessions intact, we need to use the search space concept of Lisp.

The problem begins with all of the participants on the west bank of the river:
(w, w, w, w).

The goal is to get all of the objects onto the east bank of the river. In other words, to reach state:
(e, e, e, e).

A loss occurs whenever the goat eats the cabbage or the wolf eats the goat. This can occur in six possible ways:
(e, w, w, e) and (w, e, e, w) – where the wolf can eat the goat
(e, e, w, w) and (w, w, e, e) – where the goat can eat the cabbage
(e, w, w, w) and (w, e, e, e) – where the goat can eat the cabbage
and the wolf can eat the goat

These states, which result in a loss, are often called “dead states”

We need to complete the state space representation of the problem to determine the valid transitions that exist between states.

There are a total of eight possible transitions that can take place in the game. Two of these transitions involve the farmer traveling across the river alone (either from west to east or east to west). These two transitions may be represented by the following “rules.”
(1) (w, LocWolf, LocGoat, LocCabbage) ⇒ (e, LocWolf, LocGoat, LocCabbage)
(2) (e, LocWolf, LocGoat, LocCabbage) ⇒ (w, LocWolf, LocGoat, LocCabbage)

The first rule represents the farmer moving from the west bank to the east bank. The second rule represents his movement from the east bank to the west bank.

The left hand side of each rule (the part that precedes the arrow) specifies a pattern to be matched. In the case of Rule 1, the pattern indicates that the farmer must be on the west bank of the river for the rule to be applicable. The locations of the other three objects (wolf, goat, and cabbage) are not specified by Rule 1. The right hand side of the rule (the part that follows the arrow) specifies a replacement pattern. For Rule 1, the location of the farmer is set to east and the locations of the other three objects are left unchanged. Applying Rule 1 to a state in which the farmer’s location is “w” generates a new state, identical to the first, with the exception that the farmer’s location is set to “e” – thus modeling the movement of the farmer from the west bank to the east bank of the river.

solution path – a sequence of transitions (moves or decisions) that lead from the initial state to the goal state. If more than one solution path exists, we are usually interested in the shortest or cheapest one.

State description:
( <side for farmer>, <side for wolf>, <side for goat>, <side for cabbage> )

Initial state:
( w, w, w, w ) – All participants begin on the west bank of the river.

Final (goal) state:
( e, e, e, e ) – All participants end on the east bank of the river.

Loss (dead) states:
( e, w, w, e ) – The wolf eats the goat.
( w, e, e, w ) – The wolf eats the goat.
( e, e, w, w ) – The goat eats the cabbage.
( w, w, e, e ) – The goat eats the cabbage.
( e, w, w, w ) – The goat eats the cabbage and the wolf eats the goat.
( w, e, e, e ) – The goat eats the cabbage and the wolf eats the goat.

Transitions:
(w, LocWolf, LocGoat, LocCabbage) ⇒ (e, LocWolf, LocGoat, LocCabbage)
(e, LocWolf, LocGoat, LocCabbage) ⇒ (w, LocWolf, LocGoat, LocCabbage)
(w, w, LocGoat, LocCabbage) ⇒ (e, e, LocGoat, LocCabbage)
(e, e, LocGoat, LocCabbage) ⇒ (w, w, LocGoat, LocCabbage)
(w, LocWolf, w, LocCabbage) ⇒ (e, LocWolf, e, LocCabbage)
(e, LocWolf, e, LocCabbage) ⇒ (w, LocWolf, w, LocCabbage)
(w, LocWolf, LocGoat, w) ⇒ (e, LocWolf, LocGoat, e)
(e, LocWolf, LocGoat, e) ⇒ (w, LocWolf, LocGoat, w)

One Possible Solution:
state(w, w, w, w)
state(e, w, e, w)
state(w, w, e, w)
state(e, w, e, e)
state(w, w, w, e)
state(e, e, w, e)
state(w, e, w, e)
state(e, e, e, e)

---
Feel free to contact me for any queries.
LinkedIn: https://www.linkedin.com/in/jyotimaurya09 
---