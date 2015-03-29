class PhotoPresenter < Event

  def self.model_class
    Photo
  end

  def content(view)
    view.render 'pages/photo', photo: @model
  end

  def sort_by_date
    @model.published_at
  end

end
