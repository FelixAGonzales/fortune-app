class MyExamplesController < ApplicationController
  def fortune
    fortune = rand(3)

    if fortune == 1
      message = "You will have good luck today."
    elsif fortune == 2
      message = "You will have bad luck today."
    else
      message = "I cannot see your future."
    end
    render json: {message: "Your fortune is: #{message}"}
   
  end
  
  def lottery
    render json: {message: "Your lottery ticket is #{rand(60)},#{rand(60)},#{rand(60)},#{rand(60)},#{rand(60)},#{rand(60)}"}
  end

end
