#!/usr/bin/env ruby

require 'fileutils'

home = File.expand_path("~")
path = File.join(home, "config")
backup_path = File.join(path, "backup")

`git clone https://github.com/swebb/config ~/config`

dot_files = Dir.entries(path)
dot_files.delete(".")
dot_files.delete("..")
dot_files.delete(".git")
dot_files.delete("Rakefile")
dot_files.delete("install.rb")
dot_files.delete("backup")
dot_files.delete("README.markdown")

Dir.mkdir(backup_path) unless File.directory?(backup_path)
dot_files.each do |file|
	old_file = File.join(home, "." + file)
	if File.exist?(old_file)
		p "Moving #{old_file} #{backup_path}"
		FileUtils.mv(old_file, backup_path)
	end
	FileUtils.ln_s(File.join(path, file), old_file)
end

`curl https://github.com/swebb/oh-my-zsh/raw/master/tools/install.sh -o - | sh`
`curl https://github.com/swebb/janus/raw/master/bootstrap.sh -o - | sh`
