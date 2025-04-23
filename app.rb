require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:rules)
end

get("/rock") do
  @your_move = "rock"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "tied"
  elsif @comp_move == "paper"
    @result = "lost"
  elsif @comp_move == "scissors"
    @result = "won"
  end

  erb(:game)
end

get("/paper") do
  @your_move = "paper"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "won"
  elsif @comp_move == "paper"
    @result = "tied"
  elsif @comp_move == "scissors"
    @result = "lost"
  end

  erb(:game)
end

get("/scissors") do
  @your_move = "scissors"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "lost"
  elsif @comp_move == "paper"
    @result = "won"
  elsif @comp_move == "scissors"
    @result = "tied"
  end

  erb(:game)
end
