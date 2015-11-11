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
  
  def get_username(user)
    username = user.username.present? ? user.username : (user.first_name + " " + user.last_name)
    return username.capitalize
  end

  def ist_dateformat(date)
   date.strftime("%d") + "-" + date.strftime("%m") + "-" + date.strftime("%Y")
  end

end
