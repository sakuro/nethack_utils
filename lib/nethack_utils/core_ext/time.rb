# -*- encoding: US-ASCII -*-

require 'nethack_utils/friday_13th'
require 'nethack_utils/phase_of_the_moon'

class Time
  include NethackUtils::Friday13th
  include NethackUtils::PhaseOfTheMoon
end
