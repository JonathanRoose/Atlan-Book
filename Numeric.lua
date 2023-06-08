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

function Cisteriandd(number)
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
	bignumber = tonumber(firstdigit .. seconddigit .. thirddigit .. fourthdigit)
	if bignumber >= 1000 then ddfirstdigit = math.floor(bignumber/1728)
	bignumbersecond = bignumber - (math.floor(bignumber/1728) * 1728)  
	else ddfirstdigit = " "
	bignumbersecond = bignumber
	end 
	if bignumber >= 100  then ddseconddigit = math.floor(bignumbersecond/144)  
	bignumberthird = bignumbersecond - (math.floor(bignumbersecond/144) * 144)   
	else ddseconddigit = " " 
	bignumberthird = bignumbersecond
	end 
	if bignumber >= 10  then ddthirddigit = math.floor(bignumberthird/12)
	bignumberfourth = bignumberthird - (math.floor(bignumberthird/12) * 12)
	else ddthirddigit = " " 
	bignumberfourth = bignumberthird
	end 
	if bignumber >= 1  then ddfourthdigit = math.floor(bignumberfourth/1)  else ddfourthdigit = " " end 



if ddfirstdigit == 1 then firstargument ="\\quadrupleone"
	elseif ddfirstdigit == 2 then firstargument ="\\quadrupletwo"
	elseif ddfirstdigit == 3 then firstargument ="\\quadruplethree"
	elseif ddfirstdigit == 4 then firstargument ="\\quadruplefour"
	elseif ddfirstdigit == 5 then firstargument ="\\quadruplefive"
	elseif ddfirstdigit == 6 then firstargument ="\\quadruplesix"
	elseif ddfirstdigit == 7 then firstargument ="\\quadrupleseven"
	elseif ddfirstdigit == 8 then firstargument ="\\quadrupleeight"
	elseif ddfirstdigit == 9 then firstargument ="\\quadruplenine"
	elseif ddfirstdigit == 10 then firstargument = "\\quadrupleddten"
	elseif ddfirstdigit == 11 then firstargument = "\\quadrupleddeleven"
	else firstargument = "\\nil"
	end
	if ddseconddigit == 1 then secondargument ="\\tripleone"
	elseif ddseconddigit == 2 then secondargument ="\\tripletwo"
	elseif ddseconddigit == 3 then secondargument ="\\triplethree"
	elseif ddseconddigit == 4 then secondargument ="\\triplefour"
	elseif ddseconddigit == 5 then secondargument ="\\triplefive"
	elseif ddseconddigit == 6 then secondargument ="\\triplesix"
	elseif ddseconddigit == 7 then secondargument ="\\tripleseven"
	elseif ddseconddigit == 8 then secondargument ="\\tripleeight"
	elseif ddseconddigit == 9 then secondargument ="\\triplenine"
	elseif ddseconddigit == 10 then secondargument = "\\tripleddten"
	elseif ddseconddigit == 11 then secondargument = "\\tripleddeleven"
	else secondargument = "\\nil"
	end
	if ddthirddigit == 1 then thirdargument ="\\doubleone"
	elseif ddthirddigit == 2 then thirdargument ="\\doubletwo"
	elseif ddthirddigit == 3 then thirdargument ="\\doublethree"
	elseif ddthirddigit == 4 then thirdargument ="\\doublefour"
	elseif ddthirddigit == 5 then thirdargument ="\\doublefive"
	elseif ddthirddigit == 6 then thirdargument ="\\doublesix"
	elseif ddthirddigit == 7 then thirdargument ="\\doubleseven"
	elseif ddthirddigit == 8 then thirdargument ="\\doubleeight"
	elseif ddthirddigit == 9 then thirdargument ="\\doublenine"
	elseif ddthirddigit == 10 then thirdargument = "\\doubleddten"
	elseif ddthirddigit == 11 then thirdargument = "\\doubleddeleven"
	else thirdargument  = "\\nil"
	end
	if ddfourthdigit == 1 then fourthargument ="\\singleone"
	elseif ddfourthdigit == 2 then fourthargument ="\\singletwo"
	elseif ddfourthdigit == 3 then fourthargument ="\\singlethree"
	elseif ddfourthdigit == 4 then fourthargument ="\\singlefour"
	elseif ddfourthdigit == 5 then fourthargument ="\\singlefive"
	elseif ddfourthdigit == 6 then fourthargument ="\\singlesix"
	elseif ddfourthdigit == 7 then fourthargument ="\\singleseven"
	elseif ddfourthdigit == 8 then fourthargument ="\\singleeight"
	elseif ddfourthdigit == 9 then fourthargument ="\\singlenine"
	elseif ddfourthdigit == 10 then fourthargument = "\\singleddten"
	elseif ddfourthdigit == 11 then fourthargument = "\\singleddeleven"
	else fourthargument = "\\nil"
	end
	result = "\\DeclareNumber{" .. firstargument .. "}{" .. secondargument .. "}{" .. thirdargument .. "}{" .. fourthargument .. "}"
	return result	
end


