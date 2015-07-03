module ApplicationHelper
  def on_homepage?
    request.env['PATH_INFO'] == root_path
  end
end
