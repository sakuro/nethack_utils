# -*- encoding: US-ASCII -*-

require 'nethack_utils/core_ext/date/friday_13th'
require 'nethack_utils/core_ext/date/phase_of_the_moon'
require 'nethack_utils/core_ext/date/message_of_the_day'
require 'gettext'

class Date
  include NethackUtils::CoreExt::Date::Friday13th
  include NethackUtils::CoreExt::Date::PhaseOfTheMoon
  include NethackUtils::CoreExt::Date::MessageOfTheDay
end
