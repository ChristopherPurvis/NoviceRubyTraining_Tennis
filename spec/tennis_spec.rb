require_relative '../tennis_prod.rb'

describe 'Tennis Scoring' do

  subject { TennisGame.new }

  it 'Initially scores are equal to 0-0' do
    expect(subject.score).to eq("0-0")
  end

  it 'Player 1 scores a point equal to 15-0' do
    subject.player1point

    expect(subject.score).to eq ('15-0')
  end

  it 'Player 1 scores a second point to equal 30-0'do
    2.times { subject.player1point }

    expect(subject.score).to eq ('30-0')
  end

  it 'Player 1 scores a third point to equal 40-0'do
    3.times { subject.player1point }

    expect(subject.score).to eq ('40-0')
  end

  it 'Player 1 wins a match equal to "Player 1 Wins a Match"' do
    4.times { subject.player1point }

    expect(subject.score).to eq ('Player 1 Wins a match')
  end

  it 'Player 2 scores a point, the score becomes 0-15' do
    subject.player2point

    expect(subject.score).to eq ('0-15')
  end

  it 'Player 2 scores a second point, the score becomes 0-30' do
    2.times { subject.player2point }

    expect(subject.score).to eq ('0-30')
  end

  it 'Player 2 scores a third point, the score becomes 0-40' do
    3.times { subject.player2point }

    expect(subject.score).to eq ('0-40')
  end

  it 'Player 2 wins a match equal to "Player 2 Wins a Match"' do
    4.times { subject.player2point }

    expect(subject.score).to eq ('Player 2 Wins a match')
  end

  it 'Both players have 3 points equal to "Deuce"' do
    3.times do
      subject.player1point
      subject.player2point
    end

    expect(subject.score).to eq ('Deuce')
  end

end
