class CompanyPresenter < Event

  def self.model_class
    Company
  end

  def content(view)
    view.render 'pages/company', company: @model
  end

end
