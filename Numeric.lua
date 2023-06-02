function Cisterian(number)
	--Getting the individual digits from a larger digit
	for i=1,9 do 
		if number >= 1000 then firstdigit = math.floor(number/1000)  
		numbersecond = number - firstdigit * 1000 
		else firstdigit = " "
		numbersecond = number
		end 
		if number >= 100  then seconddigit = math.floor(numbersecond/100)  
		numberthird = numbersecond - seconddigit * 100
		else seconddigit = " " 
		numberthird = numbersecond
		end 
		if number >= 10  then thirddigit = math.floor(numberthird/10)
		numberfourth = numberthird - thirddigit * 10
		else thirddigit = " " 
		numberfourth = numberthird
		end 
		if number >= 1  then fourthdigit = math.floor(numberfourth/1)  else fourthdigit = " " end 
	end

	--turning indiviudual digits into the number-glyph-limbs for TeX
	if firstdigit == 1 then firstargument ="\\quadrupleone"
	elseif firstdigit == 2 then firstargument ="\\quadrupletwo"
	elseif firstdigit == 3 then firstargument ="\\quadruplethree"
	elseif firstdigit == 4 then firstargument ="\\quadruplefour"
	elseif firstdigit == 5 then firstargument ="\\quadruplefive"
	elseif firstdigit == 6 then firstargument ="\\quadruplesix"
	elseif firstdigit == 7 then firstargument ="\\quadrupleseven"
	elseif firstdigit == 8 then firstargument ="\\quadrupleeight"
	elseif firstdigit == 9 then firstargument ="\\quadruplenine"
	else firstargument = "\\nil"
	end
	if seconddigit == 1 then secondargument ="\\tripleone"
	elseif seconddigit == 2 then secondargument ="\\tripletwo"
	elseif seconddigit == 3 then secondargument ="\\triplethree"
	elseif seconddigit == 4 then secondargument ="\\triplefour"
	elseif seconddigit == 5 then secondargument ="\\triplefive"
	elseif seconddigit == 6 then secondargument ="\\triplesix"
	elseif seconddigit == 7 then secondargument ="\\tripleseven"
	elseif seconddigit == 8 then secondargument ="\\tripleeight"
	elseif seconddigit == 9 then secondargument ="\\triplenine"
	else secondargument = "\\nil"
	end
	if thirddigit == 1 then thirdargument ="\\doubleone"
	elseif thirddigit == 2 then thirdargument ="\\doubletwo"
	elseif thirddigit == 3 then thirdargument ="\\doublethree"
	elseif thirddigit == 4 then thirdargument ="\\doublefour"
	elseif thirddigit == 5 then thirdargument ="\\doublefive"
	elseif thirddigit == 6 then thirdargument ="\\doublesix"
	elseif thirddigit == 7 then thirdargument ="\\doubleseven"
	elseif thirddigit == 8 then thirdargument ="\\doubleeight"
	elseif thirddigit == 9 then thirdargument ="\\doublenine"
	else thirdargument  = "\\nil"
	end
	if fourthdigit == 1 then fourthargument ="\\singleone"
	elseif fourthdigit == 2 then fourthargument ="\\singletwo"
	elseif fourthdigit == 3 then fourthargument ="\\singlethree"
	elseif fourthdigit == 4 then fourthargument ="\\singlefour"
	elseif fourthdigit == 5 then fourthargument ="\\singlefive"
	elseif fourthdigit == 6 then fourthargument ="\\singlesix"
	elseif fourthdigit == 7 then fourthargument ="\\singleseven"
	elseif fourthdigit == 8 then fourthargument ="\\singleeight"
	elseif fourthdigit == 9 then fourthargument ="\\singlenine"
	else fourthargument = "\\nil"
	end
	result = "\\DeclareNumber{" .. firstargument .. "}{" .. secondargument .. "}{" .. thirdargument .. "}{" .. fourthargument .. "}"
	return result	
end


