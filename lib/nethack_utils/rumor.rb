# -*- encoding: US-ASCII -*-

module NethackUtils
  module Rumor

    # Returns a randomly chosen rumor message.
    #
    # Its reliability is detemined the optional <tt>reliability</tt> argument.
    #
    # @param [Float] reliability specifies the reliability(truthiness) of the message in range [0,1].
    def rumor(reliability=nil)
      reliability ||= rand
      rumors_file = reliability > 0.5 ? truthy_rumors_file : falsy_rumors_file
      open(rumors_file) {|io| io.each_line.inject {|r, l| rand($.) < 1 ? l : r } }.chomp
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
