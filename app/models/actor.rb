require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character_array = self.characters.collect do |c|
                        c.name
                      end

    show_array = self.shows.collect do |s|
                    s.name
                 end

    "#{character_array[0]} - #{show_array[0]}"
  end
end
