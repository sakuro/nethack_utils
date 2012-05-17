# -*- encoding: US-ASCII -*-

module NethackUtils
  module PhaseOfTheMoon
    extend GetText
    FULL_MOON_MESSAGE = _('You are lucky!  Full moon tonight.')
    NEW_MOON_MESSAGE = _('Be careful!  New moon tonight.')

    NEW_MOON = 0
    private_constant :NEW_MOON

    FULL_MOON = 4
    private_constant :FULL_MOON

    # Tests if the moon is full.
    def new_moon?
      pom == NEW_MOON
    end

    # Tests if the moon is new.
    def full_moon?
      pom == FULL_MOON
    end

    def pom #:nodoc:
      goldn = (year - 1900) % 19 + 1
      epact = (11 * goldn + 18) % 30
      epact += 1 if (epact == 25 && goldn > 11) || epact == 24

      (((((yday + epact) * 6) + 11) % 177) / 22) & 7
    end

  end
end
