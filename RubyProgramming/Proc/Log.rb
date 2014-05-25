$indent = ' ' * 2
def log procDescription,&proc
	$indent += ' ' * 2
	#puts '*' + $indent + '*' 
	puts $indent + procDescription + " is starting."
	
	puts $indent + procDescription + " has finished: " + proc.call.to_s
end

log "powers of itself" do

	log "inside block" do
		log "anohter block" do
			i = 0
			i**i
		end
		i = 9
		i**i
	end
	i = 4
	i**i

end

