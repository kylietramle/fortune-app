class PagesController < ApplicationController
  def home
    if @views == nil
      @views = 1
    else
      @views += 1
    end
    p @views
  end

  def bottle
    @beer_bottles = 99
  end

  def fortune
    fortune_list = ["A friend asks only for your time not your money.", "Hard work pays off in the future, laziness pays off now.", "Change can hurt, but it leads a path to something better.", "You learn from your mistakes... You will learn a lot today."]
    @fortune = fortune_list.sample
  end

  def lottery
    @lottery = []
    available_numbers = (1..47).to_a.shuffle
    5.times do
      @lottery << available_numbers.pop
    end

    @mega = (rand(27) + 1)
  end
end
