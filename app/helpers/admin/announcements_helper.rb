module Admin::AnnouncementsHelper
  
  def get_announcement_hash
    annoucement_hash = {}
    Announcement::TITLE_NAMES.each do | key, value | 
     annoucement_hash[value] = key
    end
    return annoucement_hash
  end
  
end
