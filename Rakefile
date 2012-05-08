# -*- encoding: US-ASCII -*-

require 'bundler/gem_tasks'

namespace :gettext do
  task :extract do
    require 'gettext/tools'
    lib_files = Dir.glob('lib/**/*.rb')
    bin_files = Dir.glob('bin/*')
    GetText.update_pofiles('nethack_utils', lib_files + bin_files, 'nethack_utils 1.0.0')
  end
  task :compile do
    require 'gettext/tools'
    GetText.create_mofiles
  end
end
