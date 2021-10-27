Hoop Heroes: A stat tracking app for 2v2 pickups basketball games at the Power Park

  Models:

    Team
      - Has many Players
      - Has many Games
      - Has many Teams through Games
      - MAYBE accepts nested attributes from Players

      name: string
      slogan: string
      team_image_url: string

    Player
      - Belongs to Team

      team_id: integer
      name: string
      player_image_url: string
      points: integer
      assists: integer
      rebounds: integer


    Game
      - Belongs to 2 Teams
      - Has many Players through Teams

      winning_team_id: integer
      losing_team_id: integer
      date: datetime
      winning_score: integer
      losing_score: integer

      def average(stat)
        self[:stat] / team.games.count 
      end

[ To-Do... ]

CORE:

-Redirect to teams index after log in or sign up
-Figure out sessions, for assigning user (Coach) with devise
-Allow a new user to create a nickname when signing up
-Render a login view to the root (home)
-Bootstrap styling for navbar, and everything else
-Form for new game
-Add better validations for teams and players
-Add validations for games
-Figure out how to sort all teams by wins, all players by PPG

STRETCH:
-Add a dropdown to filter sort by assists or rebounds as well
-Add a "Top Team" and "Top Player" display on the home page before signing in/up
-Add a Scouting Report for players, works like comments. Other coaches can see / submit a scouting report for a player
  
REVIEW:
-Understand the issue/objective
-Wire frame / sketch out user stories / flow of application
-Models first
-Highest up first (User)
-Write tests first
-Happy path = All data and code is where it needs to be
-Frequent commits, detailed/meaningful commit messages. What is the inent of this change?




