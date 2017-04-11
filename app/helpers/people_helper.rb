module PeopleHelper

def graduationYearButtons(model_name, target_property, button_source)
  html=''
  list = button_source.sort
  html << '<fieldset><legend>Graduation year</legend>'
  list.each do |x|
    html << radio_button(model_name, target_property, x[1])
    html << (x[0])
    html << '<br>'
  end
  html << '</fieldset>'
  return html.html_safe
end

end
