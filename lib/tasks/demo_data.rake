namespace :jobs_data do
  desc 'Load the job demo data'
  task :load_demo_data => :environment do
   Job.create!(
      title: "SSC Combine Graduate level 2016", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "All Batchlor and master candidates",
      experience: "",
      job_category_id: 1,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
   Job.create!(
      title: "Platoon Commander",
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "Bachlors/Masters candidate application invited",
      experience: "2",
      job_category_id: 2,
      state_id: 1,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "SBI Assistant Manager", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "MBA (marketing and Accounting), B.Com, M.Com ",
      experience: "5-7 year working experience in marketing and accounting in any banking or financial organisation",
      job_category_id: 3,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "TGT/PGT Teacher", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "All graduates and post graduates",
      experience: "",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "Assistant Programmer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "BE/B.Tech(CS), MCA, M.Tech(CS), B.Sc(CS)",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "Jr Engineer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "BE/B.Tech, M.Tech with Civil, Mechanical, Electrical, EE etc streams",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "Java Programmer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "NA",
      qualifications: "BE/B.Tech(CS), MCA, M.Tech(CS), B.Sc(CS)",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 5,
      start_date: Date.today + 5.days,
      end_date: Date.today + 2.year,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "TC, Station Master, Station Guard, Khalasi etc", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "Graduates/Post-Graduates, 12 pass out, ITI ",
      experience: "",
      job_category_id: 6,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
    Job.create!(
      title: "Assistant Sub-Inspector", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      qualifications: "All Bachler and Masters invited to  apply for this post",
      experience: "",
      job_category_id: 7,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days,
      how_to_apply: "online",
      website_ads_link: "Not available now"
    )
  end
end
namespace :announcement_data do
  desc 'Load the notification and announment demo data'  
  task :load_demo_data => :environment do
    Announcement.create!(
      job_name: "MPPSC 2015 admit card",
      date: Date.today + 5.days,
      website_link: "http:/mppsc.in",
      announcement_type_id: 1
    )
    Announcement.create!(
      job_name: "MP ASI 2015 admit card",
      date: Date.today + 5.days,
      website_link: "http:/mppsc.in",
      announcement_type_id: 2
    )
    Announcement.create!(
      job_name: "Samvida Shala Sikshak 1st 2nd and 3rd",
      date: Date.today + 5.days,
      website_link: "http:/vyapam.nic.in",
      announcement_type_id: 2
    )
    Announcement.create!(
      job_name: "FCI Recruitement 2015",
      date: Date.today + 5.days,
      website_link: "http:/fci.in",
      announcement_type_id: 2
    )
    
    Announcement.create!(
      job_name: "SCC CGL 2015 Result",
      date: Date.today + 5.days,
      website_link: "http:/ssconline.com",
      announcement_type_id: 3
    )
    Announcement.create!(
      job_name: "SBI Officer and clerck notification 2015 Result",
      date: Date.today - 5.days,
      website_link: "http:/ibps.com",
      announcement_type_id: 4
    )
    Announcement.create!(
      job_name: "SSC CGL 2015 1st Phase Result",
      date: Date.today - 5.days,
      website_link: "http:/ssconline.nic.in",
      announcement_type_id: 4
    )
  end
end

namespace :quiz_data do
  desc 'Load the quiz list and quiz question demo data'  
  task :load_demo_data => :environment do
    Quiz.create!(
      title: "Demo Quiz list of #{(Date.today-120.day).strftime('%B')} #{Date.today.strftime('%Y')}",
      user_id: 1, number_of_question: 5, alloted_time: 5, quiz_category_id: 1, date: Date.today - 4.day
    )
    Quiz.create!(
      title: "Demo Quiz list of #{(Date.today-90.day).strftime('%B')} #{Date.today.strftime('%Y')}",
      user_id: 1, number_of_question: 5, alloted_time: 5, quiz_category_id: 1, date: Date.today - 3.day
    )
    Quiz.create!(
      title: "Demo Quiz list of #{(Date.today-60.day).strftime('%B')} #{Date.today.strftime('%Y')}",
      user_id: 1, number_of_question: 5, alloted_time: 5, quiz_category_id: 1, date: Date.today - 2.day
    )
    Quiz.create!(
      title: "Demo Quiz list of #{(Date.today-30.day).strftime('%B')} #{Date.today.strftime('%Y')}",
      user_id: 1, number_of_question: 5, alloted_time: 5, quiz_category_id: 1, date: Date.today - 1.day
    )
    Quiz.create!(
      title: "Demo Quiz list of #{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}",
      user_id: 1, number_of_question: 5, alloted_time: 5, quiz_category_id: 1, date: Date.today
    )
  
    Quiz.all.each do | quiz | 
      Question.create!(
        question: "Which is one of most popular website of #{Date.today.strftime('%Y')} year ?",
        option1: "google", option2: "facebook", option3: "twitter", option4: "none of these",
        answer: "none of these",
        questioinable: quiz
      )
      Question.create!(
        question: "A famouse magzine which said 'india is most prosperous and exapectation full country for all relegion' ?",
        option1: "fortune", option2: "forbse", option3: "time", option4: "none of these", answer: "time",
        questioinable: quiz
      )
      Question.create!(
        question: "'India is full of diversities as religion, language, cast, culture etc and unity' statement is given by ? ",
        option1: "USA President", option2: "British Govt", option3: "Turky Govt", option4: "Russian President",
        answer: "USA President",
        questioinable: quiz
      )
      Question.create!(
        question: "The state name which is top at the list of criminal cases in #{Date.today.strftime('%Y')} ?",
        option1: "madhyapradesh", option2: "uttarpradesh", option3: "west bengal", option4: "andhrapradesh",
        answer: "uttarpradesh",
        questioinable: quiz
      )
      Question.create!(
        question: "What is current repo rate that is fixed by RBI ?",
        option1: "7.50", option2: "7.25", option3: "7.00", option4: "none of these",
        answer: "7.25",
        questioinable: quiz
      )
    end
    
  end
end
