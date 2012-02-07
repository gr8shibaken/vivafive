if !window.vivafive then window.vivafive = {}
window.vivafive.getChildren = (tagId) ->
  $.getJSON(
    '/tags/get_children.json',{id: tagId}
  ).success((result) ->
    deleteSelectArea = (depth) ->
      $('#titleArea').empty()
      $('#questionArea').empty()
      while depth <= 3
        deleteElement = '#tagAreaChild' + depth
        $(deleteElement).empty()
        depth++

    addButton = (depth) ->
      addButton = "<button onclick='vivafive.showTitle(#{tagId}); vivafive.showQuestion(#{tagId});'>タイトルを<br />決定する</button>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addButton)

    addSelectArea = (depth,children) ->
      addSelectArea = "<form><select size='5'>"
      for child in children
        addSelectArea += "<option onclick='vivafive.getChildren(#{child.id});'>#{child.name}</option>"
      addSelectArea += "</select></form>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addSelectArea)
    
    depth = result.depth
    children = result.children    
    if children.length == 0
      deleteSelectArea(depth)
      addButton(depth)
    else
      deleteSelectArea(depth)
      addSelectArea(depth,children)
  ).fail( ->
    #TODO error handling
  )

window.vivafive.showTitle = (tagId) ->
  $.getJSON(
    '/tags/get_title.json',{id: tagId}
  ).success((title) ->
    $('#titleArea').html(title.name)
  ).fail( ->
    #TODO error handling
  )


window.vivafive.showQuestion = (tagId) ->
  $('#questionArea').empty()
  $.getJSON('/tags/get_questions.json',{id: tagId}
  ).success((result) ->
    $('#questionArea').append('<br />Chose Client Questions<br />')
    for i in result
      $('#questionArea').append('- '+i.description+'<br />')
  ).fail( ->
  )

