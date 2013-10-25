# The student class inherits from Sequel Model to wrap a database table
# named students. The columns in that table become attributes of instances
# of this class.

# http://sequel.rubyforge.org/rdoc/classes/Sequel/Model.html

# Read the methods defined:
# http://sequel.rubyforge.org/rdoc/classes/Sequel/Model/ClassMethods.html
# http://sequel.rubyforge.org/rdoc/classes/Sequel/Model/InstanceMethods.html 

class Student < Sequel::Model
  
  def before_create
    self.slugify!
    super
  end

  def slugify!
    self.slug = name.gsub(" ", "-").downcase
  end
  
end