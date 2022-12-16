puts "Creating companies..."
google =Company.create(name: "Google", founding_year: 1998)
facebook =Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin =Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "coffee mug", value: 2, company_id: google.id, dev_id: morty.id)
Freebie.create(item_name: "coffee mug", value: 2, company_id:  facebook.id, dev_id: morty.id)
Freebie.create(item_name: "sun glasses", value: 10, company_id: enron.id, dev_id: morty.id)
Freebie.create(item_name: "Pen", value: 1, company_id: facebook.id, dev_id: rick.id)
Freebie.create(item_name: "flash drive", value: 4, company_id: facebook.id, dev_id: meseeks.id)
Freebie.create(item_name: "hoodies", value: 60_000, company_id: dunder_mifflin.id, dev_id: gazorpazop.id)
Freebie.create(item_name: "hoodies", value: 200_000, company_id: facebook.id, dev_id: morty.id)

puts "Seeding done!"
