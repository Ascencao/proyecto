class User < ApplicationRecord
	#validates :nickname, :birthdate, presence: {message:'Campo Obligatorio'}
	validates :email, presence:{message:'Campo Obligatorio'}, 
	confirmation:true, 
	uniqueness: {case_sensitive: false ,message: "ya esta registrado"}, 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
	
	validates :password, presence:{message:'Campo Obligatorio'}, 
	length:{in: 6..10, message:'debe tener entre 6 y 10 caracteres'}, 
	confirmation:true
	

	#validates :name, presence: {message:'Campo Obligatorio'} if Proc.new {|n| n.last_name.present?}

end