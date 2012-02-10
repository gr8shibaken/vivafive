if !window.vivafive then window.vivafive = {}
window.vivafive.getChildren = (tagId) ->
  $.getJSON(
    '/tags/get_children.json',{id: tagId}
  ).success((result) ->
    deleteSelectArea = (depth) ->
      $('#titleArea').empty()
      $('#professionalQuestionArea').empty()
      $('#clientQuestionArea').empty()
      while depth <= 4
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
  $('#professionalQuestionArea').empty()
  $('#clientQuestionArea').empty()

  $.get('/tags/get_professional_questions.html',{id: tagId},'html'
  ).success((result) ->
    $('#professionalQuestionArea').append(result)
  ).fail( ->
  )

  $.getJSON('/tags/get_client_questions.json',{id: tagId}
  ).success((result) ->
    $('#clientQuestionArea').append('<form name="chbox">')
    $('#clientQuestionArea').append('<br />Choose Client Question<br />')
    for r in result
      $('#clientQuestionArea').append('<input type="checkbox">'+r.title+'<br />')
  ).fail( ->
  )

