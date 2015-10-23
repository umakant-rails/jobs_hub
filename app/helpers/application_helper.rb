module ApplicationHelper
  
  def get_errors(messages)
    msg = ''
    messages.each do | key, values |
      values.each do | value |
        msg =  msg + key.to_s.split('_').join(" ") + " " + value + "<br/>"
      end
    end
    return msg.html_safe
  end
  
end
