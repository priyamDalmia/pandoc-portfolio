-- function RawBlock(el)
--     if el.text:match("::: custom_placeholder") then
--       return pandoc.RawBlock('latex',  el.text)
--     end
--   end
  
function Para(elem)
  return {elem, pandoc.Para{}}
end
