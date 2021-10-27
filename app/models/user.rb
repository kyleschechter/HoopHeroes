class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :team
  has_many :players, through: :team
  attr_accessor :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## Add username column to user table

  # <div class="field">
  #   <%= f.label :name %><br />
  #   <%= f.text_field :name, autofocus: true %>
  # </div>
end
