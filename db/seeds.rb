User.create(username: 'umakant', email: 'umakantrajpoot@gmail.com', password: '12345678', password_confirmation: '12345678', confirmed_at: Date.today) if User.where(email: 'umakantrajpoot@gmail.com').blank?

JobCategory.create!(name: "Central Govt jobs") if JobCategory.where(name: "Central Govt jobs").blank?
JobCategory.create!(name: "State Govt jobs") if JobCategory.where(name: "State Govt jobs").blank?
JobCategory.create!(name: "Banking jobs") if JobCategory.where(name: "Banking jobs").blank?
JobCategory.create!(name: "Teaching jobs") if JobCategory.where(name: "Teaching jobs").blank?
JobCategory.create!(name: "Technical jobs") if JobCategory.where(name: "Technical jobs").blank?
JobCategory.create!(name: "Railway Jobs") if JobCategory.where(name: "Railway Jobs").blank?
JobCategory.create!(name: "Police/Defence Jobs") if JobCategory.where(name: "Police/Defence Jobs").blank?
JobCategory.create!(name: "Others") if JobCategory.where(name: "Others").blank?


State.create!(name: "Arunachal Pradesh") if State.where(name: "Arunachal Pradesh").blank?
State.create!(name: "Himachal Pradesh") if State.where(name: "Himachal Pradesh").blank?
State.create!(name: "Jammu & Kashmir") if State.where(name: "Jammu & Kashmir").blank?
State.create!(name: "Andhra Pradesh") if State.where(name: "Andhra Pradesh").blank?
State.create!(name: "Madhya Pradesh") if State.where(name: "Madhya Pradesh").blank?
State.create!(name: "Uttar Pradesh") if State.where(name: "Uttar Pradesh").blank?
State.create!(name: "Chhattisgarh") if State.where(name: "Chhattisgarh").blank?
State.create!(name: "Maharashtra") if State.where(name: "Maharashtra").blank?
State.create!(name: "West Bengal") if State.where(name: "West Bengal").blank?
State.create!(name: "Uttranchal") if State.where(name: "Uttranchal").blank?
State.create!(name: "Rajasthan") if State.where(name: "Rajasthan").blank?
State.create!(name: "Tamilnadu") if State.where(name: "Tamilnadu").blank?
State.create!(name: "Telangana") if State.where(name: "Telangana").blank?
State.create!(name: "Meghalaya") if State.where(name: "Meghalaya").blank?
State.create!(name: "Jharkhand") if State.where(name: "Jharkhand").blank?
State.create!(name: "Karnatka") if State.where(name: "Karnatka").blank?
State.create!(name: "Hariyana") if State.where(name: "Hariyana").blank?
State.create!(name: "Nagaland") if State.where(name: "Nagaland").blank?
State.create!(name: "Tripura") if State.where(name: "Tripura").blank?
State.create!(name: "Manipur") if State.where(name: "Manipur").blank?
State.create!(name: "Punjab") if State.where(name: "Punjab").blank?
State.create!(name: "Gujrat") if State.where(name: "Gujrat").blank?
State.create!(name: "Kerala") if State.where(name: "Kerala").blank?
State.create!(name: "Sikkim") if State.where(name: "Sikkim").blank?
State.create!(name: "Delhi") if State.where(name: "Delhi").blank?
State.create!(name: "Bihar") if State.where(name: "Bihar").blank?
State.create!(name: "Udisa") if State.where(name: "Udisa").blank?
State.create!(name: "Asam") if State.where(name: "Asam").blank?
State.create!(name: "Goa") if State.where(name: "Goa").blank?

CurrentAffairCategory.create(name: 'Appointments, Resigns & Deaths') if CurrentAffairCategory.where(name: 'Appointments, Resigns & Deaths').blank?
CurrentAffairCategory.create(name: 'Abbreviations') if CurrentAffairCategory.create(name: 'Abbreviations').blank?
CurrentAffairCategory.create(name: 'Awards & Honours') if CurrentAffairCategory.where(name: 'Awards & Honours').blank?
CurrentAffairCategory.create(name: 'Books') if CurrentAffairCategory.create(name: 'Books').blank?
CurrentAffairCategory.create(name: 'Committees') if CurrentAffairCategory.create(name: 'Committees').blank?
CurrentAffairCategory.create(name: 'Conferences') if CurrentAffairCategory.where(name: 'Conferences').blank?
CurrentAffairCategory.create(name: 'Days & Dates') if CurrentAffairCategory.create(name: 'Days & Dates').blank?
CurrentAffairCategory.create(name: 'Economy') if CurrentAffairCategory.where(name: 'Economy').blank?
CurrentAffairCategory.create(name: 'Places') if CurrentAffairCategory.create(name: 'Places').blank?
CurrentAffairCategory.create(name: 'Politics') if CurrentAffairCategory.create(name: 'Politics').blank?
CurrentAffairCategory.create(name: 'Science & Technology') if CurrentAffairCategory.create(name: 'Science & Technology').blank?
CurrentAffairCategory.create(name: 'Sports & Games') if CurrentAffairCategory.where(name: 'Sports & Games').blank? 
CurrentAffairCategory.create(name: 'New Program/Scheme') if CurrentAffairCategory.where(name: 'New Program/Scheme').blank? 

