require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    apartment: Field::BelongsTo,
    user_hobbies: Field::HasMany,
    hobbies: Field::HasMany,
    chats: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    name: Field::String,
    last_name: Field::String,
    gender: Field::String,
    document_type: Field::String,
    document_id: Field::Number,
    cellphone: Field::String,
    day_of_birth: Field::DateTime,
    profession: Field::String,
    offer_services: Field::Boolean,
    hobbies_ids: Field::String,
    owner: Field::Boolean,
    active: Field::Boolean,
    admin: Field::Boolean,
    token: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :last_name,
    :apartment
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :name,
    :last_name,
    :gender,
    :document_type,
    :document_id,
    :cellphone,
    :day_of_birth,
    :profession,
    :offer_services,
    :owner,
    :active,
    :admin,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :name,
    :last_name,
    :gender,
    :document_type,
    :document_id,
    :cellphone,
    :day_of_birth,
    :profession,
    :offer_services,
    :hobbies_ids,
    :owner,
    :active,
    :admin
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
