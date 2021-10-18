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



