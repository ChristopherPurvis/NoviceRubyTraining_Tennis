# Tennis Scoring
class TennisGame
  def initialize
    @player_1_points = 0
    @player_2_points = 0
  end

  def points_to_score(player_points)
    if player_points.zero?
      player_score = '0'
    elsif player_points == 1
      player_score = '15'
    elsif player_points == 2
      player_score = '30'
    elsif player_points == 3
      player_score = '40'
    end
    player_score
  end

  def deuce?
    (@player_1_points == 3) && (@player_2_points == 3)
  end

  def advantage_player1?
    (@player_1_points == 4) && (@player_2_points == 3)
  end

  def advantage_player2?
    (@player_2_points == 4) && (@player_1_points == 3)
  end

  def numeric_score
    player_1_score = points_to_score(@player_1_points)
    player_2_score = points_to_score(@player_2_points)
    player_1_score + '-' + player_2_score
  end

  # rubocop:disable Metrics/MethodLength
  def score
    if deuce?
      'Deuce'
    elsif advantage_player1?
      'Advantage player 1'
    elsif advantage_player2?
      'Advantage player 2'
    elsif @player_1_points == 4
      'Player 1 Wins a match'
    elsif @player_2_points == 4
      'Player 2 Wins a match'
    else
      numeric_score
    end
  end
  # rubocop:enable Metrics/MethodLength

  def player1point
    @player_1_points += 1
  end

  def player2point
    @player_2_points += 1
  end
end
