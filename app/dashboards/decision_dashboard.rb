require "administrate/base_dashboard"

class DecisionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    votes_for: Field::HasMany.with_options(class_name: "ActsAsVotable::Vote"),
    id: Field::Number,
    tittle: Field::String,
    description: Field::Text,
    positive_coefficient: Field::Number.with_options(decimals: 2),
    negative_coefficient: Field::Number.with_options(decimals: 2),
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
    :tittle,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :tittle,
    :description,
    :positive_coefficient,
    :negative_coefficient,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tittle,
    :description,
  ].freeze

  # Overwrite this method to customize how decisions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(decision)
  #   "Decision ##{decision.id}"
  # end
end
