
$ ->
  $('#address_postcode').jpostal({
 
    postcode : [ '#address_postcode' ],


    address  : {
                  "#address_prefecture_code" : "%3", 
                  "#address_address_city"            : "%4%5", 
                  "#address_address_street"          : "%6%7" 
                }
  })