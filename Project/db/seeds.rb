# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ShippingCompany.create([#{name:'MAERSK'}, #Vzla
# 	{name:'HAMBURG SUD'}, 
# 	{name:'COSCOS'}, 
# 	{name:'INTERMARINE'}, 
# 	{name:'CSAV'}]) 

# puts 'Se han Cargado todas las Navieras'

# Ship.create([{name:'Albert Maersk',shipping_company_id:ShippingCompany.first}, #Vzla
# 	{name:'Anna Maersk',shipping_company:ShippingCompany.first}, #Vzla
# 	{name:'Arnold Maersk',shipping_company:ShippingCompany.first}, #Vzla
# 	{name:'Cap Patton', shipping_company:ShippingCompany.all[1]}, #Corea
# 	{name:'Cap Pasley', shipping_company:ShippingCompany.all[1]}, #Corea
# 	{name:'Cap Doukato', shipping_company:ShippingCompany.all[1]}]) #Corea

# puts 'Se han Cargado todos los Buques'

# Nvocc.create([#{name:'DHL'}, #Vzla
# 	{name:'Oceanica Internacional'}, #Vzla
# 	{name:'Panatlantic Venezuela'}, #Vzla
# 	{name:'Intercargo'}, #Vzla Panama
# 	{name:'Igy Co'}]) #Corea

# puts 'Se han Cargado todos los NVOCCS'


# Consignee.create([{dni:'19763233',name:'Katherine Valera',phone:'04141567879',address:'San Antonio'},
# 	{dni:'19763233',name:'Jaqueline Rodrigues',phone:'04141535222',address:'San Antonio'},
# 	{dni:'25736417',name:'Gustavo Rodil',phone:'04129555228',address:'La Guaira'},
# 	{dni:'17652441',name:'Isabel Caires',phone:'0416776354',address:'Caracas'},
# 	{dni:'18212765',name:'Manuel Rodrigues',phone:'04123998787',address:'Caracas'},
# 	{dni:'22986123',name:'Katherine Nuñez',phone:'02126337067',address:'San Antonio'},
# 	{dni:'20888123',name:'Marcos Gomes',phone:'02128731862',address:'Los Teques'},
# 	{dni:'22765533',name:'Juan Carlos Díaz',phone:'04141678754',address:'Maracaibo'}
# 	])

# puts 'Se han Cargado todos los Clientes'

# Country.create([#{name:'Venezuela'}
# 	{name:'Corea'}, 
# 	{name: 'Colombia'}, 
# 	{name:'Brasil'}, 
# 	{name:'EEUU'}])

# puts 'Se han Cargado todos los Países'

Travel.create([{ship:Ship.first, date:Date.today, code:'VZLA654',status: 1}, 
	{ship:Ship.first, date:Date.today, code:'VZLA431', status: 0}, 
	{ship:Ship.last, date:Date.today, code:'CORE423',status: 2}, 
	{ship:Ship.last, date:Date.today, code:'CORE126',status: 2}])

puts 'Se han Cargado todos los Viajes'

# Container.create([{type_of: 0, size: 0, code:'WRD1457'},
# 	{type_of: 1, size: 1, code:'WRD1478'},
# 	{type_of: 0, size: 0, code:'WRD6557'},
# 	{type_of: 1, size: 0, code:'WRD1547'},
# 	{type_of: 1, size: 1, code:'WRD1127'},
# 	{type_of: 0, size: 1, code:'WRD1434'}])

# puts 'Se han Cargado todos los Container'

Bl.create([{travel:Travel.last, code:'NTR0876', emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.last, code:'NTR0876',master:Bl.all[2],emisor:ShippingCompany.all[1]},
	{travel:Travel.first, code:'VZL12898',master:Bl.first, emisor:ShippingCompany.all[0]},
	{travel:Travel.first, code:'VZL12898',master:Bl.first, emisor:ShippingCompany.all[0]},
	{travel:Travel.first, code:'VZL12898',master:Bl.first, emisor:ShippingCompany.all[0]},
	{travel:Travel.first, code:'VZL12898',master:Bl.first, emisor:ShippingCompany.all[]},
	])

puts 'Se han Cargado todos los Bls'

