require_relative '../bin/environment'

class Pokemon
  attr_accessor :name, :type, :db

  def initialize (id, name, type, hp, db)
    @id = id
    @name = name.gsub(/([^\w])/)
    @type = type
    @db = database
    @hp = hp
    save
  end

 def self.save(name, type, db )
    name = name.gsub(/([^\w])/) {}
    db.execute(
    "INSERT INTO pokemon (name, type) VALUES ('#{name}', '#{type}');")
 end

 def self.find(id, db)
  row = db.execute("SELECT * FROM pokemon WHERE id=?")
  p = Pokemon.new(*row.first, db)
 end

 def alter_hp(new_hp)
  binding.pry
  sql = "UPDATE pokemon SET hp = ? WHERE id = ?"
  @db.execute(sql, new_hp, self.id)
   
 end


  
  
end

