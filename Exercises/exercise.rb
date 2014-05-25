#15. delete_if and start_with?
arr = ['snow','winter','ice','slippery','salted road','white trees']
arr.delete_if{|word| word.start_with?("s")||word.start_with("w")}


#16. map and flatten and split
 a = ['white snow','winter wonderland','metling ice','slippery sidewalk','salted roads','white trees']
  a.map{|word| word.split}.flatten

#17. no order in Hashes