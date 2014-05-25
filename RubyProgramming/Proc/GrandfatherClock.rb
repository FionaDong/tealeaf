def grandfatherClock procs,time
	while true
		if time.min == 0 
			puts time.min
			procs.call Time.now
			break
		end
	end
end

warning = Proc.new do |time|
	puts 'DONG'
	puts time.day.to_s + '' + time.hour.to_s + '' +time.min.to_s
end

time = Time.gm(2013,1,5,12,0)

grandfatherClock warning, time