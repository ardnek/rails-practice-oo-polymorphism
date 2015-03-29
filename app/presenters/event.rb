class Event

  PRESENTERS = [
    UserPresenter,
    PhotoPresenter,
    CompanyPresenter,
  ]

  def self.all
    PRESENTERS.flat_map do |klass|
      klass.model_class.all.map do |record|
        klass.new(record)
      end
    end.sort_by(&:sort_by_date)
  end

  def initialize(model)
    @model = model
  end

  def sort_by_date
    @model.created_at
  end

end
