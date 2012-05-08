# -*- encoding: US-ASCII -*-

module NethackUtils
  module Friday13th
    # Tests if it is Friday 13th.
    def friday_13th?
      day == 13 && wday == 5
    end
  end
end
