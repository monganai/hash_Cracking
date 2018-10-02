if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end


out_file1 = File.new("argon.hashes", "w")
out_file2 = File.new("md5crypt.hashes", "w")
out_file3 = File.new("dolla5.hashes", "w")
out_file4 = File.new("dolla6.hashes", "w")
out_file5 = File.new("dolla_pbkdf2.hashes", "w")
out_file6 = File.new("TheRest.hashes", "w")
 
filename = ARGV[0]
puts "Going to open '#{filename}'"
 
fh = open filename
 
while (line = fh.gets) 
   
	if      line.include? "$argon2"
		out_file1.puts(line)

	elsif  line.include? "$1$"
		out_file2.puts(line)

	elsif  line.include? "$5$"
		out_file3.puts(line)

	elsif  line.include? "$6$"
		out_file4.puts(line)

	elsif  line.include? "$pbkdf2"
		out_file5.puts(line)

	else 	out_file6.puts(line)
	
    end

end


filename = "TheRest.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  
  
filename = "argon.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  

filename = "md5crypt.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  

filename = "dolla5.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  

filename = "dolla6.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  

filename = "dolla_pbkdf2.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  



fh.close

