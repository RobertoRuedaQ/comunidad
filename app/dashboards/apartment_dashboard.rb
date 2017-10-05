require "administrate/base_dashboard"

class ApartmentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    werehouse: Field::BelongsTo,
    users: Field::HasMany,
    children: Field::HasMany,
    complaints: Field::HasMany,
    pets: Field::HasMany,
    vehicles: Field::HasMany,
    werehouses: Field::HasMany,
    id: Field::Number,
    number: Field::String,
    block: Field::String,
    parking_lots: Field::String,
    bikes_parking: Field::String,
    coefficient: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :number,
    :block,
    :users,
    :children,
    :complaints
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :werehouse,
    :users,
    :children,
    :complaints,
    :pets,
    :vehicles,
    :werehouses,
    :id,
    :number,
    :block,
    :parking_lots,
    :bikes_parking,
    :coefficient,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :werehouse,
    :users,
    :children,
    :complaints,
    :pets,
    :vehicles,
    :werehouses,
    :number,
    :block,
    :parking_lots,
    :bikes_parking,
    :coefficient,
  ].freeze

  # Overwrite this method to customize how apartments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(apartment)
  #   "Apartment ##{apartment.id}"
  # end
end
