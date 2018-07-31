# Morse Code Translator

Solution written in `Elixir` for the below Morse Code Exercise in `CodementorX Assessment`.

## Morse Code

Morse Code is delivered in a series signals which are referred to as dashes (`-`) or dots (`.`). 
To keep things simple for the purposes of this challenge we'll only decode letters with a **maximum length of three signals**.

![Image of Yaktocat](http://res.cloudinary.com/strive/image/upload/w_840/f00795e8b5d5d2d0b71863f38126c9b1.png)

[Here is the Morse Code dichotomic search table courtesy of Wikipedia](https://en.wikipedia.org/wiki/Morse_code#/media/File:Morse_code_tree3.png)

### Morse Code Examples

`-.-` translates to `K`  
`...` translates to `S`  
`.-` translates to `A`  
`--` translates to `M`  
`.` translates to `E`  

### Background

You've started work as morse code translator. Unfortunately some of the signals aren't as distinguishable as others and there are times where a `.` seems indistinguishable from `-`. 
In these cases you write down a `?` so that you can figure out what all the posibilities of that letter for that word are later.

### Task

Write a function `possibilities` that will take a string `word` and return an array of possible characters that the morse code `word` could represent.

#### Examples with `?`

`?` should return `['E','T']`  
`?.` should return `['I','N']`  
`.?` should return `['I','A']`  
`?-?` should return `['R','W','G','O']`  