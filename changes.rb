module Changes
    def change_input(input)
      %w[yes y].include?(input.downcase)
    end
  end