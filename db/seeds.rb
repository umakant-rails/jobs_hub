JobType.create!(name: "Central Govt jobs") if JobType.where(name: "Central Govt job").blank?
JobType.create!(name: "State Govt jobs") if JobType.where(name: "State Govt job").blank?
JobType.create!(name: "Banking jobs") if JobType.where(name: "Banking job").blank?
JobType.create!(name: "Teaching jobs") if JobType.where(name: "Teaching job").blank?
JobType.create!(name: "Technical jobs") if JobType.where(name: "Technical job").blank?
JobType.create!(name: "Railway Jobs") if JobType.where(name: "Railway Jobs").blank?
JobType.create!(name: "Police/Defence Jobs") if JobType.where(name: "Police/Defence Jobs").blank?

State.create!(name: "Jammu & Kashmir") if State.where(name: "Jammu & Kashmir").blank?
State.create!(name: "Punjab") if State.where(name: "Punjab").blank?
State.create!(name: "Hariyana") if State.where(name: "Hariyana").blank?
State.create!(name: "Himachal Pradesh") if State.where(name: "Himachal Pradesh").blank?
State.create!(name: "Uttranchal") if State.where(name: "Uttranchal").blank?
State.create!(name: "Delhi") if State.where(name: "Delhi").blank?
State.create!(name: "Rajasthan") if State.where(name: "Rajasthan").blank?
State.create!(name: "Uttar Pradesh") if State.where(name: "Uttar Pradesh").blank?
State.create!(name: "Madhya Pradesh") if State.where(name: "Madhya Pradesh").blank?
State.create!(name: "Gujrat") if State.where(name: "Gujrat").blank?
State.create!(name: "Bihar") if State.where(name: "Bihar").blank?
State.create!(name: "Jharkhand") if State.where(name: "Jharkhand").blank?
State.create!(name: "West Bengal") if State.where(name: "West Bengal").blank?
State.create!(name: "Udisa") if State.where(name: "Udisa").blank?
State.create!(name: "Chhattisgarh") if State.where(name: "Chhattisgarh").blank?
State.create!(name: "Maharashtra") if State.where(name: "Maharashtra").blank?
State.create!(name: "Goa") if State.where(name: "Goa").blank?
State.create!(name: "Karnatka") if State.where(name: "Karnatka").blank?
State.create!(name: "Telangana") if State.where(name: "Telangana").blank?
State.create!(name: "Andhra Pradesh") if State.where(name: "Andhra Pradesh").blank?
State.create!(name: "Tamilnadu") if State.where(name: "Tamilnadu").blank?
State.create!(name: "Kerala") if State.where(name: "Kerala").blank?
State.create!(name: "Sikkim") if State.where(name: "Sikkim").blank?
State.create!(name: "Asam") if State.where(name: "Asam").blank?
State.create!(name: "Meghalaya") if State.where(name: "Meghalaya").blank?
State.create!(name: "Arunachal Pradesh") if State.where(name: "Arunachal Pradesh").blank?
State.create!(name: "Nagaland") if State.where(name: "Nagaland").blank?
State.create!(name: "Tripura") if State.where(name: "Tripura").blank?
State.create!(name: "Manipur") if State.where(name: "Manipur").blank?
