import { Controller } from "@hotwired/stimulus"
import Rails, { $ } from "@rails/ujs";

export default class extends Controller {
   // Change Category
   changeCategory(event){

      const utility_bill_category_id = event.target.value;
      const url = "/utility_bills/companies_details";
      
      Rails.ajax({
         type: "GET",
         url: url,
         data: "utility_bill_category_id=" + utility_bill_category_id,
         success: function(data){
            console.log(data);
         }
      });// End Rails Ajax
   }
}
