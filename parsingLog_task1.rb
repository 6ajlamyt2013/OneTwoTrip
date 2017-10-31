 file = File.open("nginx.txt")
  num = 0
  status_200 = 0
  status_404 = 0
  status_401 = 0
  status_503 = 0
  status_500 = 0
    file.each do |line| num+=1

      if line =~/up_status="200"/
        status_200 += 1
      elsif line =~/up_status="401"/
        status_401 +=1
      elsif line =~/up_status="404"/
        status_404 +=1
      elsif line =~/up_status="503"/
        status_503 +=1
      elsif line =~/up_status="500"/
        status_500 +=1
      end
	  
    end
  puts "#{num} - #{status_200} -requests returned non 200 code: "
  puts "401 - #{status_401}"
  puts "404 - #{status_404}"
  puts "503 - #{status_503}"
  puts "500 - #{status_500}"
