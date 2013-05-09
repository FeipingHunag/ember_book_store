Ember.Handlebars.registerBoundHelper 'money', (value) ->
  round_value = Math.round(value * 100)

  if round_value % 100 is 0
    "#{round_value / 100}.00"
  else
    "#{parseInt(round_value / 100)}.#{round_value % 100}"

