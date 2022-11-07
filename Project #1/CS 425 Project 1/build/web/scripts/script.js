var Project1 = (function() {
    
    var rates = null;
    
    var convert = function() {
        //var value = rates.rates.GBP;
        //alert("rate is: " + value);
        
        var target_currency = $("#currency_code").val();
        var target_rate = Number(rates["rates"][target_currency]);
        
        var UStoSelected = ($("#use_value").val() / Number(rates["rates"]["USD"]));
        var currency = UStoSelected * target_rate;
        
        var target_value_final = (currency).toLocaleString('en-US', {
            style: 'currency',
            currency: target_currency
        });
        var p = document.createElement("p");
        $(p).html("The equivalent of $"+ $("#usd_value").val() + " in " + $("#currency_code").val() + " for the date " + $("#rate_date").val() + " is: " + target_value_final);
        $("#output").append(p);
    
        
    };
    
    return {
        
        jQueryTest: function() {
            $("#output").html("jQuery Version: " + $().jquery);
        },
        
        getRatesAndConvert: function () {
            
            var rate_date = $("#rate_date").val();
            
            if (rate_date === "") {
                alert("Please enter or select a date in the \"Date\" field!");
            }
            else {

                console.log("Getting rates for " + rate_date + " ...");

                $.ajax({
                    url: 'http://localhost:8180/CS_425_Project_1/rates?rate_date=' + rate_date,
                    method: 'GET',
                    dataType: 'json',
                    success: function(response) {
                        rates = response;
                        convert();
                    }
                });
                
            }

        }
        
    };
    
}());