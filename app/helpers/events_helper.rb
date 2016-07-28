module EventsHelper
  def event_entries(event_id)
    Entry.where(event_id: event_id)
  end

  def entry_name(user_id)
    User.find_by(id: user_id).name
  end
end
