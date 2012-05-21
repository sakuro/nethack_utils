# -*- encoding: US-ASCII -*-

module NethackUtils
  module CoreExt
    module Date
      module MessageOfTheDay

        def motd
          {}.tap do |hash|
            if friday_13th?
              hash.update(fri13th: _('Watch out!  Bad things can happen on Friday the 13th.'))
            end
            if new_moon?
              hash.update(pom: _('Be careful!  New moon tonight.'))
            elsif full_moon?
              hash.update(pom: _('You are lucky!  Full moon tonight.'))
            end
          end
        end
      end
    end
  end
end
