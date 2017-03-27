module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="col-md-12 alert alert-error alert-danger">
    <div class="col-md pull-right">
    <button type="button" class="close" data-dismiss="alert">x</button>
    </div>
    <h3>#{pluralize(resource.errors.count, "error")} prohibited this user being saved:</h3>
      <div class="col-md-12">
      #{messages}
      </div>
    </div>
    HTML

    html.html_safe
  end
end
