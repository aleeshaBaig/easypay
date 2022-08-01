import { Controller } from "@hotwired/stimulus"
import Rails, {} from "@rails/ujs";
import jquery from 'jquery'

window.$ = jquery
export default class extends Controller {
 // Change Category
 changeCategory(event){

    const utility_bill_category_id = event.target.value;
    const url = "/utility_bills/companies_details";

    Rails.ajax({
       type: "GET",
       url: url,
       data: "utility_bill_category_id=" + utility_bill_category_id,
       success: function(response){
          if(response.status == true){

             // $("#utility_bill_company_id").removeAttr('disabled');
             $("#utility_bill_company_id option").remove();

             let rdata = response.data;

             // Fill sub category select 
             if (rdata.length > 0){
                var row = "<option value=\"" + "" + "\">" + "Select" + "</option>";
                $(row).appendTo("#utility_bill_company_id");
                //// Fill sub category select
                $.each(rdata, function(i){
                   console.log(rdata[i])
                   row = "<option value=\"" + rdata[i].id + "\">" + rdata[i].name + "</option>";
                   $(row).appendTo("select#utility_bill_company_id");
                });
             }else{
                var row = "<option value=\"" + "" + "\">" + "" + "</option>";
                $(row).appendTo("select#utility_bill_company_id");
             }
          }
       },
       error: function(data) {
          $("#utility_bill_company_id option").remove();
          var row = "<option value=\"" + "" + "\">" + "Select" + "</option>";
          $(row).appendTo("#utility_bill_company_id");
       }
    });// End Rails Ajax
 }
  
}
