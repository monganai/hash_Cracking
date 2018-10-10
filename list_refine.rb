if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end


 
filename = ARGV[0]

out_file1 = File.new("list_refine_output.hashes", "w")

puts "Going to open '#{filename}'"
 
fh = open filename
 
while (line = fh.gets) 
   
	if    
		  line.length == 5
		out_file1.puts(line)
	
    end

end


filename = "list_refine_output.hashes"  
count = IO.readlines(filename).size  
puts "There are #{count} lines in #{filename}";  
  

