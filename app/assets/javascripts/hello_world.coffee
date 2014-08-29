$ ->

  specific_person =
    name: "Patrick"
    text_to_be_formatted: "text_to_be_shown"

    change: (event, context) ->
      if @name == "Patrick"
        @name = "Marina"
      else
        @name = "Patrick"

    showText: ->
      "#{@text} is the text"

  _.bindAll(specific_person, 'change', 'showText')

  rivets.binders.foo = (target, value) ->
    if @model.name == "Marina"
      target.style.color = "blue"
    else
      target.style.color = "red"

  rivets.binders.input = (target, value) ->
    target.addEventListener "input", @publish

  target = $("#hello_world")
  rivets.bind target, person: specific_person
  target.show()
