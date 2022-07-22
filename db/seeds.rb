=begin
     utility_bill_categories = UtilityBillCategory.create(
     [{ name:"Electricity",description:"We provide you electricity"},
      {name:"Gas",description:"We provide you Gas"},
      {name:"Water",description:"We provide you water"},
      {name:"Internet",description:"We provide you Internet"}
     ]
     )
=end
   
=begin
companies =Company.create(
            [{name:"LESCO",utility_bill_category_id:1},{name:"FESCO",utility_bill_category_id:1},
            {name:"GEPCO",utility_bill_category_id: 1},{name:"K-Electric",utility_bill_category_id: 1},
            {name:"SNGPL",utility_bill_category_id: 2}, {name:"Sui", utility_bill_category_id:2},
            {name:"PTCL",utility_bill_category_id: 3},  {name:"Stromfiber",utility_bill_category_id:3},
            {name:"WASA",utility_bill_category_id: 4}
        ]
         )
=end    
=begin     
      1.times do |i|
        utility_bill=UtilityBill.create(
            consumer_id: 5647,
            expected_reading_day: 3,
            expected_issuance_day: 5,
            expected_due_day: 15,
            user_id: 1, 
            utility_bill_category_id: 1,
            company_id: 1

        )
      end
=end      
    
=begin    
Bill.create(
        amount: 3500,
        late_fee: 25,
        reading_date: DateTime.strptime("09/25/2022 8:00", "%m/%d/%Y %H:%M"),
        issuance_date: DateTime.strptime("09/26/2022 8:00", "%m/%d/%Y %H:%M"),
        due_date: DateTime.strptime("10/05/2022 8:00", "%m/%d/%Y %H:%M"),
        status:1,
        user_id: 37,
        utility_bill_id: 24,
        billing_month: "July"
    )
=end
