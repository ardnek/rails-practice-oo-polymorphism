class UserPresenter < Event

  def self.model_class
    User
  end

  def content(view)
    view.render 'pages/user', user: @model
  end

end
