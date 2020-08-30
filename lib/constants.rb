class String
  def red
    "\e[31m#{self}\e[0m"
  end

  def yellow
    "\e[33m#{self}\e[0m"
  end
end

PLAYER_1_DISC = "\u2B24".red
PLAYER_2_DISC = "\u2B24".yellow
EMPTY_SPACE =  	"\u25EF"

NUMBER_TO_SYMBOL = {
  0 => EMPTY_SPACE,
  1 => PLAYER_1_DISC,
  2 => PLAYER_2_DISC
}