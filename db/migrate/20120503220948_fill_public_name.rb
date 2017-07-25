class FillPublicName < ActiveRecord::Migration[4.2]

  class Person < ApplicationRecord
  end

  def up
    Person.reset_column_information
    Person.all.each do |person|
      if person.public_name.blank?
        person.update_attribute :public_name, person.full_name
      end
    end
  end

  def down
  end
end
