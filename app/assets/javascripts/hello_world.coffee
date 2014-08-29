$ ->

  specific_person =
    name: "Patrick"

    change: (event, context) ->
      if @name == "Patrick"
        @name = "Marina"
      else
        @name = "Patrick"

    showText: (event) ->
      @text = event.currentTarget.value

  _.bindAll(specific_person, 'change', 'showText')

  rivets.formatters.my_text = (value) ->
    "#{value || ""} is my text"

  rivets.binders.foo = (target, value) ->
    if value == "Marina"
      target.style.color = "blue"
    else
      target.style.color = "red"

  target = $("#hello_world")
  rivets.bind target, person: specific_person
  target.show()
