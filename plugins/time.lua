function run(msg, matches)
local url = http.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)
 local text =  'ðŸ•’ Ø³Ø§Ø¹aØª '..jdat.FAtime..' \nðŸ“† Ø§Ù…Ø±ÙˆØ² '..jdat.FAdate..' Ù…ÛŒØ¨Ø§Ø´Ø¯.\n    â€”--\nðŸ•’ '..jdat.ENtime..'\nðŸ“† '..jdat.ENdate.. '\n\n@Cruel_Channel'
return text
end
return {
  patterns = {"^[#/!]([Tt][iI][Mm][Ee])$"}, 
run = run, 
}
