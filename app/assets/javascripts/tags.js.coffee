if !window.vivafive then window.vivafive = {}
window.vivafive.getChildren = (tagId,professional) ->
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
      addButton = "<button onclick=vivafive.showDetail(#{tagId},#{professional});>タイトルを<br />決定する</button>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addButton)

    addSelectArea = (depth,children) ->
      addSelectArea = "<form><select size='5'>"
      for child in children
        addSelectArea += "<option onclick='vivafive.getChildren(#{child.id},#{professional});'>#{child.name}</option>"
      addSelectArea += "</select></form>"
      outputElement = '#tagAreaChild' + depth
      $(outputElement).html(addSelectArea)
    
    myself = result.myself
    depth = result.depth
    children = result.children
    if children.length == 0
      deleteSelectArea(depth)
      addButton(depth,myself)
    else
      deleteSelectArea(depth)
      addSelectArea(depth,children)
  ).fail( ->
    #TODO error handling
  )

window.vivafive.showDetail = (tagId,professional) ->
  $('#titleArea').empty()
  $('#professionalQuestionArea').empty()
  $('#clientQuestionArea').empty()
  
  $.getJSON('/tags/get_title.json',{id: tagId}
  ).success((title) ->
    $('#titleArea').append('<p><h3>Title</h3></p>')
    $('#titleArea').append("<p>#{title.description}</p>")
  ).fail( ->
    alert('fuga')
  )
  
  $.get('/tags/get_professional_questions.html',{id: tagId},'html'
  ).success((result) ->
    $('#professionalQuestionArea').append(result)
  ).fail( ->
  )

  $.getJSON('/tags/get_client_questions.json',{id: tagId}
  ).success((result) ->
    $('#clientQuestionArea').append('<p><h3>Choose Client Question</h3></p>')
    for r in result
      $('#clientQuestionArea').append("<p><input type='checkbox' name='job[client_question_ids][]' value=#{r.id}>"+r.title+'</p>')
    $('#clientQuestionArea').append("<input type='hidden' name='job[tag]' value=#{tagId}></input>")
    $('#clientQuestionArea').append("<input type='hidden' name='job[professional]' value=#{professional}></input>")
    $('#clientQuestionArea').append("<input type='submit' value='ポストする'></input>")
  ).fail( ->
  )


