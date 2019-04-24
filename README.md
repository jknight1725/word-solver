# word-solver
Gives all permutations of a string and its substrings that are words

I came up with this one watching my girlfriend play 'wordscapes' an app where you make words out of 6 given letters.
It works well for any number of word puzzle games e.g. what words can you make with your scrabble rack
or even just to see all of the anagrams of a word and the words that could be made with the letters of that word

The dictionary used to check for "word-yness" is usr/share/dict/words
It can be a bit obtuse

Some fun math 
```
As always these calculations are based on the worst case - no repetitons of letters. This is the max number of permutations
  
  possible permutations of 6 letters 
    6! = 720
    6 choices for the first letter 5 for the second letter ... 1 choice for the sixth(last) letter

  possible permutations of 5 letters
    6! = 720
    6 choices for the first........2 choices for the fifth(last)
    Alternative method:
      Six combinations (6 choose 5) = 6
      ABCDE ABCDF ABCEF ABDEF ACDEF BCDEF
      Each with 5! permutations
      6 * 5! = 6! = 720

  possible permutations of 4 letters
    6*5*4*3 = 360
    6 choices for the first...3 letters to choose for the fourth(final) letter
    Alternative method:
      15 combinations (6 choose 4) = 15
        In case you don't believe m(e)ath
          
          ABCD ABCE ABCF ABDE ABDF
          ABEF ACDE ACDF ACEF ADEF
          BCDE BCDF BCEF BDEF CDEF
          
      Each with 4! permutations
      15 * 4 * 3 * 2 * 1 = 360 
      
  possible permutations of 3 letters
    6*5*4 = 120
    Alternative method:
      6 choose 3 = twenty combinations
      each with 3! permutations
      20*3*2*1 = 120
  
  possible permutations of 2 letters 
    6*5 = 30
    
    6 choose 2 = 15 combinations
    each with 2! permutations
    15 * 2 * 1 = 30
    
  possible permutations of 1 letter
    6
    
   
  Total number of permutations to check for in dictionary (worst case)
  720 + 720 + 360 + 120 + 30 + 6 = 1956
  
  1956 hash lookups - easy peasy
      
      
  
  
  
```
An example of the output
currently the program is configured to calculate words of length 3 and up, it could be adjusted to one letter

```
Enter a sequence deervil
dee
red
erd
dev
ide
die
led
eld
rid
div
lid
ree
ere
eer
vee
eve
lee
eel
rev
ire
rie
rel
vie
vei
lev
lie
lei
dree
dere
deer
rede
reed
dele
lede
leed
verd
ride
dire
dier
dive
lied
idle
dirl
reve
veer
ever
reel
leer
vire
rive
vier
veri
lire
rile
lier
live
vile
vlei
veil
evil
virl
eider
elder
delve
elide
drive
diver
idler
lived
divel
devil
revie
revel
lever
elver
lieve
livre
rivel
liver
levir
derive
redive
delver
veiled
drivel
relive
revile
reveil
veiler
levier
deliver
deviler
livered
