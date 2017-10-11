require "administrate/base_dashboard"

class ComplaintDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    apartment: Field::BelongsTo,
    id: Field::Number,
    category: Field::String,
    description: Field::Text,
    answer: Field::Text,
    solved: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    topic: Field::String,
    imagen: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :apartment,
    :id,
    :category,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :apartment,
    :id,
    :category,
    :description,
    :answer,
    :solved,
    :created_at,
    :updated_at,
    :topic,
    :imagen,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :apartment,
    :category,
    :description,
    :answer,
    :solved,
    :topic,
    :imagen,
  ].freeze

  # Overwrite this method to customize how complaints are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(complaint)
  #   "Complaint ##{complaint.id}"
  # end
end
