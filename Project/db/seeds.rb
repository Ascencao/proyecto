# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShippingCompany.create([#{name:'MAERSK'}, #Vzla
	{name:'COSCOS'}, #Colombia
	{name:'INTERMARINE'}, #Colombia
	{name:'HAMBURG SUD'}, #Corea
	{name:'CSAV'}]) #EEUU

puts 'Se han Cargado todas las Navieras'

Ship.create([{name:'Albert Maersk',ship_company:1}, #Vzla
	{name:'Anna Maersk',ship_company:1}, #Vzla
	{name:'Arnold Maersk',ship_company:1}, #Vzla
	{name:'Cap Patton','' ship_company:2 }, #Corea
	{name:'Cap Pasley', ship_company:2 }, #Corea
	{name:'Cap Doukato', ship_company:2 }, #Corea

puts 'Se han Cargado todos los Buques'

Nvocc.create([#{name:'DHL'}, #Vzla
	{name:'Oceanica Internacional'}, #Vzla
	{name:'Panatlantic Venezuela'}, #Vzla
	{name:'Intercargo'}, #Vzla Panama
	{name:'Igy Co'}]) #Corea

puts 'Se han Cargado todos los NVOCCS'

Consignee.create([#{name:'Maru Rodrigues', dni:'19294109',phone:'04142594178',address:'Caracas'},
{name:'Jaqui Rodrigues', dni:'24542263',phone:'04149871254',address:'Caracas'},
{name:'Manuel Rodrigues', dni:'25837221',phone:'04241535222',address:'Caracas'},
{name:'Gustavo Rodil', dni:'25345987',phone:'04129555228',address:'Caracas'},
{name:'Madeleine Rodil', dni:'18234677',phone:'04142865133',address:'Caracas'},
{name:'Katherine Valera', dni:'19524221',phone:'04141547879',address:'Caracas'},
{name:'Maru', dni:'19294109',phone:'04142594178',address:'Caracas'},) 

puts 'Se han Cargado todos los NVOCCS'

Country.create([#{name:'Venezuela'}
		{name:'Corea'}, 
	{name: 'Colombia'}, 
	{name:'Brasil'}, 
	{name:'EEUU'}])

puts 'Se han Cargado todos los Países'

Travel.create([{ship:Ship.first, Date.today, code: 'VZLA654'}, 
	{ship:Ship.first, date:Date.today,code: 'VZLA431'}, 
	{ship:Ship.last, Date.today, code: 'CORE423'}, 
	{ship:Ship.last, Date.today, code: 'CORE126'}])

puts 'Se han Cargado todos los Países'