class Event

  def initialize(model)
    @model = model
  end

  def content(view)
    if @model.is_a?(User)
      view.render 'pages/user', user: @model
    elsif @model.is_a?(Company)
      view.render 'pages/company', company: @model
    elsif @model.is_a?(Photo)
      view.render 'pages/photo', photo: @model
  end
end

  def sort_by_date
    if @model.is_a?(User)
      @model.created_at
    elsif @model.is_a?(Company)
      @model.created_at
    elsif @model.is_a?(Photo)
      @model.published_at
  end
end

end
