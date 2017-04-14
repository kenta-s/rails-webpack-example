module ApplicationHelper
  def webpack_asset_path(path)
    # if Rails.env.development?
    #   return "http://localhost:3500/pack/#{path}"
    # end
    host = Rails.application.config.action_controller.asset_host
    manifest = Rails.application.config.assets.webpack_manifest
    path = manifest[path] if manifest && manifest[path].present?
    "#{host}/pack/#{path}"
  end
end
