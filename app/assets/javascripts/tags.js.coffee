if !window.vivafive then window.vivafive = {}
window.vivafive.getChildren = (tagId) ->
  $.getJSON(
    '/tags/get_children.json',{id: tagId}
  ).success((result) =>
    depth = result.depth
    children = result.children    
    if children.length == 0
      i = depth
      while i <= 3
        deleteElement = '#tagAreaChild' + i
        $(deleteElement).empty()
        i++
      addButton = "<button>タイトルを<br />決定する</button>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addButton)
    else
      i = depth
      while i <= 3
        deleteElement = '#tagAreaChild' + i
        $(deleteElement).empty()
        i++
      addSelectArea = "<form><select size='5'>"
      for child in children
        addSelectArea += "<option onclick='vivafive.getChildren(#{child.id});'>#{child.name}</option>"
      addSelectArea += "</select></form>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addSelectArea)   
  ).fail( ->
    #TODO error handling
  )