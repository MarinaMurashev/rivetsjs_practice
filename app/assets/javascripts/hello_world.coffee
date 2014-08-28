$ ->
  model =
    name: "Patrick"
    change: ->
      console.log(this)
      if model.name == "Patrick"
        model.name = "Marina"
      else
        model.name = "Patrick"

  target = $("#hello_world")

  rivets.binders.name = (target, value) ->
    console.log("BINDING NAME")
    if model.name == "Marina"
      target.style.color = "blue"
    else
      target.style.color = "red"

  rivets.bind target, model: model
  target.show()

  model.name = "Marina"

