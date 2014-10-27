
$( function(){

  var cityOptions = '#city_options';
  var cityInfo = '#city_info';

  var fillInOptions = function(data) {
      $(cityOptions).select2({
        id: 'city_id',
        data: {results: data, text: "text"},
        initSelection: function(element, callback) {
          var selection = _.find(data, function(metric){
              return metric.city_id === element.val();
          })
          callback(selection);
        },
        query: function(options){
          var pageSize = 100;
          var startIndex  = (options.page - 1) * pageSize;
          var filteredData = data;

          if( options.term && options.term.length > 0 ){
            if( !options.context ){
                var term = options.term.toLowerCase();
                options.context = data.filter( function(metric){
                    return ( metric.text.toLowerCase().indexOf(term) !== -1 );
                });
            }
            filteredData = options.context;
          }
          options.callback({
            context: filteredData,
            results: filteredData.slice(startIndex, startIndex + pageSize),
            more: (startIndex + pageSize) < filteredData.length
          });
        }
    });
  }

  $(cityOptions).on('change', function(e){
    var selectId = $(cityOptions).val();
    console.log(selectId)
    $.ajax({
      url: $(cityInfo).data('url'),
      type: 'GET',
      dataType: 'json',
      data: { select_id: selectId }
    }).done( function(data) {
      $('#city_info').html(data.html);
    }).error( function(data) {
      console.log("Ajax error!");
    })
  })

  $.ajax({
    url: $(cityOptions).data('url'), // Route to the Script Controller method//
    type: "GET",
    dataType: "json"
  }).done(
    function(data) {
      console.log(data);
      fillInOptions(data);
    }).error( function() {
      console.log("Ajax error!")
    })
})




