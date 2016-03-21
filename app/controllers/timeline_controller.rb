class TimelineController < ApplicationController
  def index
    fetch_timeline_service = FetchTimelineService.new(current_user)
    @timeline = fetch_timeline_service.instance
  end

  def reload
    fetch_timeline_service = FetchTimelineService.new(current_user)
    @timeline = fetch_timeline_service.reload
  end
end
