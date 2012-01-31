if !window.vivafive then window.vivafive = {}
window.vivafive.getChildren = (tagId) ->
  $.getJSON(
    '/tags/get_children.json',{id: tagId}
  ).success((result) =>
    depth = result.depth
    children = result.children    
    if children.length == 0
      alert("no children")
    else
      i = depth
      while i <= 2
        deleteElement = '#tagAreaChild' + i
        $(deleteElement).empty()
        i++
      addHtml = "<form><select size='5'>"
      for child in children
        addHtml += "<option onclick='vivafive.getChildren(#{child.id});'>#{child.name}</option>"
      addHtml += "</select></form>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addHtml)   
  ).fail( ->
    #TODO error handling
  )