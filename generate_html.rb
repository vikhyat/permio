require 'erb'

images = Dir.glob("images/*").sort_by { |img|
  # sort in reverse chronological order
  - File.new(img).mtime.to_i
}
erb = ERB.new( File.new('gallery.erb').read )
puts erb.result(binding)
