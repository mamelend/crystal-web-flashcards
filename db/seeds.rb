
User.create([{username:'joe', email: 'joe@joe.com', password: 'joe'},
             {username:'arc', email: 'arc@arc.com', password: 'arc'},
             {username:'bob', email: 'bob@bob.com', password: 'bob'}])


Deck.create([{category: 'Video Games', name: 'Retro Game Trivia'},
             {category: 'Comics' , name: 'Marvel Trivia' },
             {category: 'Pop Culture' , name: 'Movie Trivia' },
             {category: 'Sports', name:'Basketball Trivia' }])


#Retro Game Trivia
Card.create([{deck_id: 1, question:'What highly addictive puzzle game designed by a Russian programmer features Russian buildings, dancers and music?', answer:'Tetris',difficulty: 1},
             {deck_id: 1, question:'Before becoming a plumber in the 1983 game Mario Bros., Mario had a different profession. What was it? ', answer:'Pizza Maker',difficulty: 1},
             {deck_id: 1, question:'Who is Bagman? ', answer:'Retired safe cracker',difficulty: 1},
             {deck_id: 1, question:'Who says "@!#?@!" every time he is hit by something? ', answer:'Donkey Kong',difficulty: 1},
             {deck_id: 1, question:'What car do you drive in the original OutRun arcade game?', answer:'Ferarri Testarossa',difficulty: 1},
             {deck_id: 1, question:'Name the first level in teh initial Sonic The Hedgehog game?', answer:'Green Hill Zone',difficulty: 1},
             {deck_id: 1, question:'Which bloody game franchise, born in 1992, courted controversy with its \'Fatalities\'?', answer:'Mortal Kombat',difficulty: 1},
             {deck_id: 1, question:'The first Metal Gear game was released on the MSX2 in what decade?', answer:'80\'s',difficulty: 1},
             {deck_id: 1, question:'What NFL Player in Tecmo Bowl is known for being unstoppable?', answer:'Bo Jackson',difficulty: 1},
             {deck_id: 1, question:'What year was the first Madden game released?', answer:'1988',difficulty: 1},
             {deck_id: 1, question:'What must be destroyed in Star Wars to get to the next level of difficulty? ', answer:'Death Star',difficulty: 1},


#Marvel Trivia Cards
             {deck_id: 2, question:'What is Peter Parker\'s middle name?', answer:'Benjamin',difficulty: 1},
             {deck_id: 2, question:'Which X-Men villain possessed the Infinity Gems? ', answer:'Thanos',difficulty: 1},
             {deck_id: 2, question:'Which comic book writer created Hawkeye?', answer:'Stan Lee',difficulty: 1},
             {deck_id: 2, question:'Who killed Charles Xavier in "Avengers vs. X-Men"?', answer:'Cyclops',difficulty: 1},
             {deck_id: 2, question:'Marvel Comics owned the rights what word from 1975 through 1996. Hint: It is a type of monster.', answer:'Zombie',difficulty: 1},
             {deck_id: 2, question:'Michael Jackson almost bought Marvel Comics in the late 90\'s because he wanted to play what character in a movie?', answer:'Spider-Man',difficulty: 1},
             {deck_id: 2, question:'In which Marvel movie did Samuel L. Jackson first appear as Nick Fury?', answer:'Iron Man',difficulty: 1},
             {deck_id: 2, question:'What was the name of the group of soldiers who fought alongside Captain America in World War II?', answer:'The Howling Commandos',difficulty: 1},
             {deck_id: 2, question:'Who said it: \'You are deluded, Captain. You pretend to be a simple soldier, but in reality you are just afraid to admit that we have left humanity behind.\'', answer:'Red Skull',difficulty: 1},
             {deck_id: 2, question:'What kind of food does Tony Stark suggest the Avengers eat after saving New York in \'The Avengers\'?', answer:'Shawarma',difficulty: 1},
             {deck_id: 2, question:'Which member of the Guardians of the Galaxy is related to Thanos?', answer:'Gamora',difficulty: 1},

#Movie Trivia Cards
             {deck_id: 3, question:'Who created the musical score for "The Good, The Bad and The Ugly"', answer:'Ennio Morricone',difficulty: 1},
             {deck_id: 3, question:'What movie was the first the first color film? ', answer:'The Wizard of Oz',difficulty: 1},
             {deck_id: 3, question:'After Top Gun was shown in cinemas, recruitment into the Navy by young men went up by how many percent?', answer:'500',difficulty: 1},
             {deck_id: 3, question:'Who was the first character to fart in a Disney Movie', answer:'Pumbaa',difficulty: 1},
             {deck_id: 3, question:'Peter Ostrum, Charlie from Willy Wonka and the Chocolate Factory, never acted in another movie after that and is now working as a?...', answer:'Veterinarian',difficulty: 1},
             {deck_id: 3, question:'How fast did the bus in the movie Speed need to go in order not to blow up?', answer:'50mph',difficulty: 1},
             {deck_id: 3, question:'What was Adam Sandler\'s occupation in Big Daddy', answer:'A tollbooth worker',difficulty: 1},
             {deck_id: 3, question:'In the movie Next Friday what is the name of the vicious dog?', answer:'Chico',difficulty: 1},
             {deck_id: 3, question:'Who was the sponsor for the tv show Wayne\'s World?', answer:'Noah\'s Arcade
',difficulty: 1},
             {deck_id: 3, question:'Fill in the blank: \'Well, I could be wrong, but I believe diversity is an old, old [blank] that was used during the Civil War era.', answer:'Wooden ship',difficulty: 1},

#Basketball Trivia Cards
             {deck_id: 4, question:'What team won the very first NBA game?', answer:'New York Knicks',difficulty: 1},
             {deck_id: 4, question:'What NBA player scored 100 points on March 2, 1962?', answer:'Wilt Chamberlain',difficulty: 1},
             {deck_id: 4, question:'What player won All-Star Game MVP, NBA MVP, and NBA Finals MVP awards in 2000?', answer:'Shaq',difficulty: 1},
             {deck_id: 4, question:'Who was the first Chinese player to play in an NBA game?', answer:'Wang Zhizhi',difficulty: 1},
             {deck_id: 4, question:'On Dec. 9, 2004 what NBA player scored 13 points in 33 seconds to seal a win against the San Antonio Spurs', answer:'Tracy McGrady',difficulty: 1},
             {deck_id: 4, question:'Who is the all-time NBA leader in points scored?', answer:'Kareem Abdul-Jabbar',difficulty: 1},
             {deck_id: 4, question:'Who was the 3rd pick in the 1984 NBA Draft?', answer:'Michael Jordan',difficulty: 1},
             {deck_id: 4, question:'Who was the 2015 Finals MVP?', answer:'Andre Iguodala',difficulty: 1},
             {deck_id: 4, question:'Which player was well known for his underhand free throw form?', answer:'Rick Barry',difficulty: 1},
             {deck_id: 4, question:'Which player is on the NBA logo?', answer:'Jerry West',difficulty: 1},
             {deck_id: 4, question:'On Dec. 9, 2004 what NBA player scored 13 points in 33 seconds to seal a win against the San Antonio Spurs', answer:'Tracy McGrady',difficulty: 1}])
