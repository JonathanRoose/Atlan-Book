
while true do
	io.write("Sentence: ")
	ipt  = io.read()
	sent = "" .. ipt

		sentence = string.gsub(string.lower(sent), "%.", "\\")
		sentenze = string.gsub(sentence, "%s+", "\\") 


	print("\\".. sentenze)  
end
