# Default Seed
User.create(email: 'admin@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            role: User.roles[:admin]
)
default_data = [
  {
    name: "Electricity",
    description: "We provide you Electricity",
    companies: [
      {
        name: "FESCO",
        description: "Faisalabad Electricity Supply Company"
      },
      {
        name: "GEPCO",
        description: "Gujranwala Electric Power Company"
      },
      {
        name: "IESCO",
        description: "Islamabad Electricity Supply Company"
      },
      {
        name: "K-Electric",
        description: "Karachi Electric"
      },
      {
        name: "LESCO",
        description: "Lahore Electricity Supply Company"
      },
      {
        name: "MEPCO",
        description: "Multan Electricity Power Company"
      },
      {
        name: "PESCO",
        description: "Peshawer Electricity Supply Company"
      },
      {
        name: "QESCO",
        description: "Quetta Electricity Supply Company"
      },
      {
        name: "TESCO",
        description: "Tribal Electricity Supply Company"
      }
    ]
  },
  {
    name: "Gas",
    description: "We provide you Gas",
    companies: [
      {
        name: "SNGPL",
        description: "Sui Northern Gas Pipelines Limited"
      },
      {
        name: "SSGC",
        description: "Sui Southern Gas Company"
      }
    ]
  },
  {
    name: "Water",
    description: "We provide you Water",
    companies: [
      {
        name: "LWASA",
        description: "Lahore Water And Sanitation Agency"
      },
      {
        name: "FWASA",
        description: "Faisalabad Water And Sanitation Agency"
      }
    ]
  },
  {
    name: "Internet",
    description: "We provide you Internet",
    companies: [
      {
        name: "PTCL",
        description: "Pakistan Telecommunication Company Ltd"
      },
      {
        name: "Wateen",
        description: "Wateen Telecom is a converged communication services provider based in Lahore, Pakistan, and was a sister concern of Warid Telecom"
      },
      {
        name: "NayaTel",
        description: "A Premium Triple Play (Internet, Cable TV, Phone) Service provider.High Speed FTTH Internet Infrastructure"
      }
    ]
  }
]

# Create Utility Bill Categories
begin
  puts "Creating UtlityBillCategories and Companies"
  default_data.each do |data|
    name = data[:name]
    description = data[:description]
    companies = data[:companies]

    utility_bill_category = UtilityBillCategory.create!(name: name, description: description)
    companies.each do |company|
      name = company[:name]
      description = company[:description]
      Company.create!(name: name, utility_bill_category_id: utility_bill_category.id)
    end
    puts "UtilityBillCategories and Companies created successfully."
  end
end
