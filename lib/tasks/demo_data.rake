namespace :jobs_data do
  desc 'Load the job demo data'
  task :load_demo_data => :environment do
   Job.create(
      title: "SSC Combine Graduate level 2016", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "All Batchlor and master candidates",
      experience: "",
      job_category_id: 1,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
   Job.create(
      title: "Platoon Commander",
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "Bachlors/Masters candidate application invited",
      experience: "2",
      job_category_id: 2,
      state_id: 1,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "SBI Assistant Manager", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "MBA (marketing and Accounting), B.Com, M.Com ",
      experience: "5-7 year working experience in marketing and accounting in any banking or financial organisation",
      job_category_id: 3,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "TGT/PGT Teacher", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "All graduates and post graduates",
      experience: "",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "Assistant Programmer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "BE/B.Tech(CS), MCA, M.Tech(CS), B.Sc(CS)",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "Jr Engineer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "BE/B.Tech, M.Tech with Civil, Mechanical, Electrical, EE etc streams",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 4,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "Java Programmer", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "",
      eligibility: "BE/B.Tech(CS), MCA, M.Tech(CS), B.Sc(CS)",
      experience: "5-7 year working experience in programming, database management, js etc, preffered to certied candidate",
      job_category_id: 5,
      start_date: Date.today + 5.days
    )
    Job.create(
      title: "TC, Station Master, Station Guard, Khalasi etc", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "Graduates/Post-Graduates, 12 pass out, ITI ",
      experience: "",
      job_category_id: 6,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
    Job.create(
      title: "Assistant Sub-Inspector", 
      description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
      age_limit: "30 years",
      eligibility: "All Bachler and Masters invited to  apply for this post",
      experience: "",
      job_category_id: 7,
      start_date: Date.today + 5.days,
      end_date: Date.today + 40.days
    )
  end
end
namespace :announcement_data do
  desc 'Load the notification and announment demo data'  
  task :load_demo_data => :environment do
    Announcement.create(
      job_name: "MPPSC 2015 admit card",
      date: Date.today + 5.days,
      website_link: "http:/mppsc.in",
      announcement_type_id: 1
    )
    Announcement.create(
      job_name: "MP ASI 2015 admit card",
      date: Date.today + 5.days,
      website_link: "http:/mppsc.in",
      announcement_type_id: 2
    )
    Announcement.create(
      job_name: "Samvida Shala Sikshak 1st 2nd and 3rd",
      date: Date.today + 5.days,
      website_link: "http:/vyapam.nic.in",
      announcement_type_id: 2
    )
    Announcement.create(
      job_name: "FCI Recruitement 2015",
      date: Date.today + 5.days,
      website_link: "http:/fci.in",
      announcement_type_id: 2
    )
    
    Announcement.create(
      job_name: "SCC CGL 2015 Result",
      date: Date.today + 5.days,
      website_link: "http:/ssconline.com",
      announcement_type_id: 3
    )
    Announcement.create(
      job_name: "SBI Officer and clerck notification 2015 Result",
      date: Date.today - 5.days,
      website_link: "http:/ibps.com",
      announcement_type_id: 4
    )
    Announcement.create(
      job_name: "SSC CGL 2015 1st Phase Result",
      date: Date.today - 5.days,
      website_link: "http:/ssconline.nic.in",
      announcement_type_id: 4
    )
  end
end
