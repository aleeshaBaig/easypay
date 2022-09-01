// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
$(function(){
  $('.pay_bill').on('click', function(){
    var cf  = confirm("Are you sure want to pay?");
    if(cf){
       printf("Success")
      return true;
    }else{
      return false;
    } 
  });
});
