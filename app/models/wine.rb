class Wine < ActiveRecord::Base
  has_many :log_entries, dependent: :destroy

  def average_rating
    if log_entries.loaded?
      log_entries.map(&:rating).compact.average
    else
      log_entries.average(:rating)
    end
  end

  VARIETALS = ['Barbera', 'Cabernet Sauvignon', 'Champagne/Sparkling Wine', 'Chardonnay', 'Chenin Blanc', 'Dolcetto', 'Fume Blanc', 'Gewürztraminer', 'Merlot', 'Mourvedre', 'Petite Sirah', 'Pinot Grigio', 'Pinot Noir', 'Riesling', 'Rosés', 'Sangiovese',  'Sauvignon Blanc', 'Syrah', 'Viognier', 'Zinfandel']
  validates :name, :winery, :country, :year, :varietal, presence: true
  validates :year,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 },
    unless: "year.blank?"
  validates :varietal, inclusion: { in: VARIETALS }
end
