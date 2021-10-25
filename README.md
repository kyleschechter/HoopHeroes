# Hoop Heroes

## Overview

Hoop Heroes is a dynamic stat tracking application for a 2v2 style pickup basketball league. Professional basketball players are afforded the luxury of having stat trackers at every game to tally all of their individual stats, and team performance. One quick internet search can tell you the average points, assist, rebounds, blocks, steals, etc. for any past or current NCAA or NBA player. You can also see how each team's record compares. 

Hoop Heroes allows coaches or team managers to coordinate and track all of their games, as well as their players' indvidual or season long stats. Whether you are a dedicated hooper looking to pin point your strengths and weaknesses, or just a novice trying to have some fun while tracking your success; Hoop Heroes gives you the power to do so.

## Installation:

In order to begin competing against your friends in Hoop Heroes, you will need to fork and clone this repository. Once you do that, `cd` into the project folder and set up the environment and database:

```bash
bundle install
rails db:migrate db:seed

# Finally, start your server
rails s
```
Now you can go to your [localhost:3000](http://localhost:3000) and begin.

## How to use the app:

### As a new user...

* Sign up as a new coach with a valid email, and create a pasword for your account.
* Once your account is created, you will be directed to the `MyTEAM` page, where you will need to use `[New Team +]` to create your team.
* Your team needs:
  * Name
  * Slogan
  * Valid image link that will become your Team Photo
  * 2 Players and their respective positions (Names should be just nicknames to identify each player)

* Now that you have your team, you are ready to get in the game!

### Existing users...

* From the `MyTEAM` page, you are able to see your team name, along with your players' names at the top of the screen.
* Press the `Record New Game` button to log your most recent matchup(s).
* Every new game you record will make your team the "Home Team", so choose an opponent and press `Begin`.
* From there, you will need to input the full game stats for each participating player on both teams. Once you're done, submit the performances and the game will be complete.
* `Recent Matchups` on your team page will display summaries for all of the games that you participated in. You will see:
  * The opponent
  * The result (Win or Loss)
  * Each player's stats (Your players are highlighted in blue)

### What else?

* Navigate to the `Squads` tab to see a list of all of the active squads and their records.
* Or check out the `Hoopers` tab to compare your players' season averages to the rest of your competitors.
* Log all of your games so you can check back regularly to see... 
  * Trends in your performances 
  * Top squads in the park 
  * Most dominant hoopers in the park
* Most importantly... Have fun!

## Credits:
Special thanks to Sebastian and Gillian for always believing in me and pushing me to think outside of the box. As you both always say...
### `We can do hard things!`

Also, shout out to the entire Power Code Academy class for being the most supportive group I have ever worked with. 



