require 'fileutils'

class Installer
  attr_accessor :translations, :files

  def initialize(translations)
    @translations = translations
    @files = translations.map { |k,v| Translation.new(k, v) }
  end

  def self.git_clone(repo, target)
    path = translate_path(target)
    FileUtils.rm_rf(path) if File.exists?(path)
    `git clone ""#{repo}"" "#{target}"`
  end

  def self.translate_path(path)
    if path[0].chr === '~'
      path[0] = ENV['HOME']
    end
    path
  end
end
