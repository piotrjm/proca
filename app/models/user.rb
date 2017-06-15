class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :timeoutable, 
         :trackable, 
         :validatable,
         :lockable

  # relations
  has_and_belongs_to_many :roles


  has_many :accessorizations, dependent: :nullify
  has_many :accesses_projects, :through => :accessorizations, source: :project

end
