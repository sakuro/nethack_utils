# -*- encoding: US-ASCII -*-

require 'gettext'

module NethackUtils
  module Friday13th
    extend GetText
    MESSAGE = _('Watch out!  Bad things can happen on Friday the 13th.')

    # Tests if it is Friday 13th.
    def friday_13th?
      day == 13 && wday == 5
    end
  end
end
