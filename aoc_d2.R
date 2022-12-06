# strategy guide
# A = rock; B = Paper; C = scissors 
# X = rock; Y = paper; Z = scissors
# score is score of selected shape (1 for rock; 2 for paper; 3 for scissors) + outcome for round (0 if lost; 3 if draw; 6 if won)


input = gsub(" ", "", readLines("~/Desktop/data", warn = FALSE)) # remove space between the letters to create 2 letter combinations

# part 1
p1_dict = unlist(list( # create dictionary to compare 2 letter combindatoins wtih
  "AX"= 4, #  rock rock
  "AY"= 8, #  rock paper
  "AZ"= 3, #  rock scissors
  "BX"= 1, #  paper rock
  "BY"= 5, #  paper paper
  "BZ"= 9, #  paper scissors
  "CX"= 7, #  scissors rock
  "CY"= 2, #  scissors paper
  "CZ"= 6  #  scissors scissors
))

total_score = function(input, dict) return(sum(dict[input])) # function that reviews input and pulls score from dictionary, then sums the total scores

total_score(input, p1_dict) # 12586


# part 2
# update: X = lose, 0; Y = draw,3 ; and Z = win, 6
 
pt2_dict = unlist(list( # update based on new defintions
  "AX"= 3, #  rock scissors
  "AY"= 4, #  rock rock
  "AZ"= 8, #  rock paper
  "BX"= 1, #  paper rock
  "BY"= 5, #  paper paper
  "BZ"= 9, #  paper scissors
  "CX"= 2, #  scissors paper
  "CY"= 6, #  scissors scissors
  "CZ"= 7  #  scissors rock
))

total_score(input, pt2_dict) # 13193
