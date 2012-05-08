# -*- encoding: US-ASCII -*-

require 'gettext'

module NethackUtils
  module Rumor

    include GetText

    # Returns a randomly chosen rumor message.
    #
    # Its reliability is detemined the optional <tt>reliability</tt> argument.
    #
    # == Arguments
    # * <tt>reliability</tt> specifies the reliability(truthiness) of the message in range [0,1].
    def rumor(reliability=nil)
      reliability ||= rand
      rumors_file = reliability > 0.5 ? truthy_rumors_file : falsy_rumors_file
      open(rumors_file) {|io| io.lines.inject {|r, l| rand($.) < 1 ? l : r } }.chomp
    end

    private

    def rumors_root #:nodoc:
      File.expand_path('../../../data', __FILE__)
    end

    def truthy_rumors_file #:nodoc:
      File.join(rumors_root, _('rumors.tru'))
    end

    def falsy_rumors_file #:nodoc:
      File.join(rumors_root, _('rumors.fal'))
    end

  end
end
