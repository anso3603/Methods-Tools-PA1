def glob_match(filenames,pattern)
        prispattern = pattern.gsub(/[A-z]/){|char| '('+char+')'} 		# Pattern for words
        prispattern.gsub!(/[*]/, '*' => '.*') 							# Pattern for characters with words

        array = []
        filenames.each{|filname| filname.match(prispattern){|mat| array << mat[0]}}

        return array
end

print glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')

gets
