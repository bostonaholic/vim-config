class Linker
  def self.prompt_to_link_files(file)
    print "overwrite? #{file.target} [ynaq]  "
    case $stdin.gets.chomp
    when 'y' then replace(file)
    when 'a' then replace_all(file)
    when 'q' then exit
    else          skip_file(file)
    end
  end

  def self.replace_all?
    @replace_all == true
  end

  def self.skip_file(file)
    puts " => skipping #{file.target}"
  end

  def self.auto_link_files(file)
    file.safe_to_link? ? link_files(file) : replace(file)
  end

  private

  def self.link_files(file)
    puts " => symlinking #{file.source} to #{file.target}"
    file.link
  end

  def self.replace(file)
    puts " => replacing #{file.source} with #{file.target}"
    file.force_link
  end

  def self.replace_all(file)
    @replace_all = true
    replace(file)
  end
end
