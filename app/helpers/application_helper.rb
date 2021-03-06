module ApplicationHelper
  def active_class(name); "active" if params[:controller] == name; end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def resource_class
    devise_mapping.to
  end

  def action_params
    if params[:action] == "show"
      params[:id]
    else
      params[:controller]
    end
  end

  def number_to_currency(number, options = {})
    options[:locale] ||= I18n.locale
    super(number, options)
  end
end
