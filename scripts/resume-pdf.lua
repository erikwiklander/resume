-- Keep experience dates with their headings in the PDF only.
function Blocks(blocks)
  local result = pandoc.List()
  local index = 1
  while index <= #blocks do
    local heading = blocks[index]
    local following = blocks[index + 1]
    if heading.t == "Header" and heading.level == 3
        and pandoc.utils.stringify(heading):match("^Wiklandia International AB") then
      result:insert(pandoc.RawBlock("typst", "#pagebreak()"))
    end
    if heading.t == "Header" and heading.level == 3
        and following and following.t == "Para" then
      local date = pandoc.utils.stringify(following)
      if date:match("^%d%d%d%d%-%d%d%d%d$")
          or date:match("^%a+ %d%d%d%d%-present$") then
        heading.content:insert(pandoc.RawInline("typst", " #h(0.6em) #box[#text(size: 9.5pt, weight: \"regular\", style: \"italic\")["))
        heading.content:extend(following.content)
        heading.content:insert(pandoc.RawInline("typst", "]]"))
        index = index + 1
      end
    end
    result:insert(heading)
    index = index + 1
  end
  return result
end
