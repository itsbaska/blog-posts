02 - Using Structs
Thursday, May 24, 2018

There are few different types of data structures in Elixir, one of which is a struct. A struct is based off of a `Map`, the difference is that it has a fixed structure. So what are Maps? Mapping in Rubyland meant that you would be looping through some form of data structure while changing it in some way. However Maps in Elixir are not the same thing at all. If we compare it to Ruby again the closest thing to a Map in Ruby would be a Hash. Maps in Elixir are a key value structure. Maps can be noted as `%{ key: value }`. For example:

```iex> my_map = %{ name: "Baska", likes: "Chips" }
%{likes: "Chips", name: "Baska"}
```

With Map.keys you can get a list of all the keys, and with Map.values you can get a list of the values.
```
iex> Map.keys my_map
[:likes, :name, :where]
iex> Map.values my_map
["Chips", "Baska", "Dallas"] 
```

To get an individual value you can access the Map with either dot notation or bracket notation:
```
iex> my_map[:name]
"Baska"
iex> my_map.name
"Baska"
```

Now back to Structs. What makes Structs different from Maps is that a struct is particular about its fields. It will have predetermined fields and default values. A struct is defined with `defstruct` followed by key-value pairs.

```
defmodule User do
  defstruct name: "Baska", likes: "Chips"

end

A Structs field can be accessed through the dot notation or by using pattern matching.

```iex>  person = %User{}
%User{name: "Baska", likes: "Chips"}
iex> person.likes
"Chips"
```
or
```iex> %User{name: "Baska", food} = person
%User{name: "Baska", likes: "Chips"}
iex> food
"Chips"
```

Defining a Struct inside of a Module allows us to give behaviour to the associated struct. It also plays a role in achieving some form of polymorphism. 

In my Elixir Tic Tac Toe game initially I didn't exactly know how to store the "X" that marks the Player, so I had made it so that I would have a function called `mark` that returned "X". This is with the assumption that I won't be changing "X" to some other mark and Player will always be marked as "X".

```def mark do
"X"
end```

If I were implementing this in Ruby I would have had the "X" mark as part of my initialize method. 

```class Player
  def initialize(args)
    @marker = "X"
  end
end
```

After more reading on Elixir I realized I could achieve something similar by using structs. 

```
defmodule Player do
  defstruct mark: "X"
end
```
The confusing part about using a struct this way is that it makes it more like Object Oriented Programming rather than Functional, and can be thought of as not utilizing the advantages of the FP paradigm.

Previously when I implemented the Gilded Rose Kata I had used structs similarly to achieve polymorphism, and I know that both my AI as well as my Human Player for my Unbeatable Tic Tac Toe game will share some functionality. At the moment I am still not fully sure about how I have handled the mark, but hopefully I will be able to update this for the better once I figure it out. 