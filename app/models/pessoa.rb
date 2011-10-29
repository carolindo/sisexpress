class Pessoa < ActiveRecord::Base
  self.table_name = 'tb_pessoas'
  validates_presence_of :nome, :tipo


  def self.pessoa_select
    find(:all).collect { |x| [x.name, x.id] }
  end
  
  

end
