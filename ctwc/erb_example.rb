require 'erb'
erb = ERB.new(File.read('./ctwc/template.rhtml'))
p erb.run
