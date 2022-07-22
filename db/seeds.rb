# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    # 20.times do |i|
    #     User.create(
    #         email:"email#{i+1}@gmail.com",
    #         password:"password#{i+1}"
    #     )
    # end
    #  utility_bill_categories = UtilityBillCategory.create(
    #     [{
    #         name:"Electricity",description:"We provide you electricity"
    #     },
    #     {
    #         name:"Gas",description:"We provide you Gas"
    #     },
    #     {
    #         name:"Water",description:"We provide you water"
    #     },
    #     {
    #         name:"Internet",description:"We provide you Internet"
    #     }
    # ]
    #  )
    
    # companies =Company.create(
    #         [{
    #             name:"LESCO",utility_bill_category_id:1
    #         },
    #         {
    #             name:"FESCO",utility_bill_category_id:2 
    #         },
    #         {
    #             name:"GEPCO",utility_bill_category_id: 3
    #         },
    #         {
    #             name:"K-Electric",utility_bill_category_id:4
    #         }
    #     ]
    #      )
    #   1.times do |i|
        # utility_bill=UtilityBill.create(
        #     consumer_id: 5647,
        #     expected_reading_day: 3,
        #     expected_issuance_day: 5,
        #     expected_due_day: 15,
        #     user_id: 1, 
        #     utility_bill_category_id: 1,
        #     company_id: 1

        # )
    #   end
    
    Bill.create(
        amount: 3500,
        late_fee: 25,
        reading_date: DateTime.strptime("09/25/2022 8:00", "%m/%d/%Y %H:%M"),
        issuance_date: DateTime.strptime("09/26/2022 8:00", "%m/%d/%Y %H:%M"),
        due_date: DateTime.strptime("10/05/2022 8:00", "%m/%d/%Y %H:%M"),
        status:1,
        user_id: 33,
        utility_bill_id: 20,
        billing_month: "July"
    )
#     category_list = [
#   [ "Electricity", "We are provide electricity" ],
#   [ "Gas", "We are provide gas" ],
#   [ "Water","We are provide water" ],
#   [ "Internet", "We are provide internet" ]
# ]

# category_list.each do |ubc|
#   UtilityBillCategory.create( name: ubc[0], description: ubc[1] )
# end
# companies=Company.create