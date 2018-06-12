ActiveSupport::Notifications.subscribe "process_action.action_controller" do |*args|
  event = ActiveSupport::Notifications::Event.new(*args)
  format = event.payload[:format].to_s || "all"
  format = "all" if format == "*/*"
  controller = event.payload[:controller]
  action = event.payload[:action]
  path = event.payload[:path]
  request_method = event.payload[:method].to_s.downcase
  status = event.payload[:status]
  duration = event.duration.round(4)
  db_runtime = event.payload[:db_runtime].round(4) || 0
  view_runtime = event.payload[:view_runtime].round(4) || 0

  if controller.starts_with?("Api::V")
    api_call = ApiCall.create(
      endpoint: path,
      controller: controller,
      action: action,
      method: request_method,
      format: format,
      status: status,
      duration: duration,
      db_runtime: db_runtime,
      view_runtime: view_runtime
    )
  end
  # Rails.logger.debug "Headers #{event.payload[:headers].to_h.keys.grep /\A[A-Za-z0-9-]+\z/}"
end


# ActiveSupport::Notifications.subscribe "sql.active_record" do |*args|
#   sql = args.last[:sql].strip
#   sql = case
#   when sql.starts_with?("SELECT") then "selects"
#   when sql.starts_with?("INSERT") then "inserts"
#   when sql.starts_with?("UPDATE") then "updates"
#   when sql.starts_with?("DELETE") then "deletes"
#   else "others"
#   end
#   Rails.logger.debug "SQL #{sql}"
# end


# %w{read generate fetch_hit write delete}.each do |metric|
#   ActiveSupport::Notifications.subscribe "cache_#{metric}.active_support" do |*args|
#     event = ActiveSupport::Notifications::Event.new(*args)
#     Rails.logger.debug "#{metric}.time #{event.duration}"
#   end
# end
