#!/bin/bash

# -----------------------------------------
# -----------------------------------------
# Fill in the missing regular expressions
# between the ' '
# -----------------------------------------
# -----------------------------------------

# -----------------------------------------
# Question 1a
# - Find all the answers (questions) which contain a year
# - To take a look at the test input
#   look at Input/Q1a.txt
# -----------------------------------------
grep -E '[1|2][0-9]{3}' Input/Q1a.txt > Output/A1a.txt


# -----------------------------------------
# Question 1b
# - Find specific lines in a screenplay 
# - To take a look at the test input
#   look at Input/Q1b.txt
# -----------------------------------------
grep -E '^(Audrey:)|(Audry:)|(Audi:)' Input/Q1b.txt > Output/A1b.txt



# -----------------------------------------
# Question 1c
# - Find all the lines containing dates in a file
# - To take a look at the test input
#   look at Input/Q1c.txt
# -----------------------------------------
grep -E '(January|February|March|April|May|June|July|August|September|October|November|December) [123]?[0-9]..\.' Input/Q1c.txt > Output/A1c.txt
