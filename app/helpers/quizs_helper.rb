module QuizsHelper

  def get_category_list(category)
    return "<li><a href='#{quizs_by_category_quizs_path(category.id)}'>#{category.name.capitalize}</a></li>"
  end

  def get_quiz_categories_list
    cat_str1, cat_str2, cat_str3 = "", "", ""
    devider_str = "<li class='divider'></li>"

    crt_affr_header = '<li class="dropdown-header" role="presentation">Current Affairs Quiz</li>'
    exam_quiz_header = '<li class="dropdown-header" role="presentation">Exams Quiz</li>'
    subject_quiz_header  = '<li class="dropdown-header" role="presentation">Subjects Quiz</li>'

    @quiz_categories.each do | category |
      if ["current affairs"].include?(category.name.downcase)
        cat_str1 = cat_str1 + get_category_list(category)
      elsif ['banking', 'ssc'].include?(category.name.downcase)
        cat_str2 = cat_str2 + get_category_list(category)
      else
        cat_str3 = cat_str3 + get_category_list(category)
      end
    end

    return (crt_affr_header + cat_str1 + devider_str + exam_quiz_header  + cat_str2 +
      devider_str + subject_quiz_header + cat_str3).html_safe
  end

end
