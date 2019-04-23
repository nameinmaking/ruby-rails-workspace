File.foreach('test.txt') do |line|
  puts line
  p line          # how the  line is really represented.
  p line.chomp    # chops off the newline character.
  p line.split    # array of words in line.
end


# Exception handling
begin

  File.foreach('do_not_exist.txt') do |line|
    puts line.chomp
  end

rescue Exception => e
  puts e.message
  puts "Let's pretend this didn't happen..."
end


# alternative to the above
if File.exist? 'test.txt'
  File.foreach('test.txt') do |line|
    puts line.chomp
  end
end


# writing to a file
File.open("test1.txt","w") do |file|
  file.puts "line #1"
  file.puts "Another line"
end


# reading environment variable in Ruby
puts ENV["JAVA_HOME"]

sleep(1)
# Will throw an error: file does not exist.
File.foreach('do_not_exist.txt') do |line|
  puts line.chomp
end