require 'rake'
require './lib/installer'
require './lib/translation'
require './lib/linker'

MAC_FILES =
  { '.vimrc'           => '~/.vimrc',
    '.gvimrc'          => '~/.gvimrc',
    '.vim'             => '~/.vim' }

desc "Install vim configuration and plugin files"
task :default do
  installer = Installer.new(MAC_FILES)
  installer.files.each do |f|
    case
      when f.identical?        then Linker.skip_file(f)
      when Linker.replace_all? then Linker.auto_link_files(f)
      when f.safe_to_link?     then Linker.auto_link_files(f)
      else                          Linker.prompt_to_link_files(f)
    end
  end
  Rake::Task['vundle'].execute
end

desc "Install vundle for vim plugins"
task :vundle do
  target = "#{MAC_FILES['.vim']}/bundle/vundle"
  Installer.git_clone('http://github.com/gmarik/vundle.git', target)
  puts "Running BundleInstall to install plugins...this will take a couple minutes."
  `vim +BundleInstall +qall`
  puts "vim plugins installed."
end
