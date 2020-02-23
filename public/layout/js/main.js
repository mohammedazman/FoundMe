$(document).ready(function () {
      $('#sidebarCollapse').on('click', function () {
          $('#sidebar').toggleClass('active');
          $(this).toggleClass('active');
      });
  });



  window.TrackJS &&
  TrackJS.install({
    token: "ee6fab19c5a04ac1a32a645abde4613a",
    application: "argon-dashboard-free"
  });



///  comapagin 1 (view )

  
  var $table = $('#table')
  var $remove = $('#remove')
  var selections = []

  function getIdSelections() {
    return $.map($table.bootstrapTable('getSelections'), function (row) {
      return row.id
    })
  }

  function responseHandler(res) {
    $.each(res.rows, function (i, row) {
      row.state = $.inArray(row.id, selections) !== -1
    })
    return res
  }

  function detailFormatter(index, row) {
    var html = []
    $.each(row, function (key, value) {
      html.push('<p><b>' + key + ':</b> ' + value + '</p>')
    })
    return html.join('')
  }

  function operateFormatter(value, row, index) {
    return [
      '<a class="reject" href="javascript:void(0)" title="Reject">',
      '<i class="fa fa-trash"></i>',
      '</a>  ',
      '<a class="add" href="javascript:void(0)" title="Approve">',
      '<i class="fa fa-check-square "></i>',
      '</a>'
    ].join('')
  }


// delete fun
function deleteU(){
  $.ajax({
    url: "/managecompaign",
      type: "POST",
      cache: false,
      data:{
          type:4,
          ids: $("#id_d").val(),
          state:$("#state_d").val(),

      },
      success: function(dataResult){
          var dataResult = JSON.parse(dataResult);
          if(dataResult.statusCode==200){
              $('#changeCompaigns').modal('hide');
              alert(dataResult.message)
              // sucMsg(dataResult.message);
              load_data()
          }
          else if(dataResult.statusCode==201){
             alert(dataResult);
          }
  }
  });
}



  window.operateEvents = {
    'click .like': function (e, value, row, index) {
      alert('You click like action, row: ' + JSON.stringify(row))
    },
    'click .add': function (e, value, row, index) {
      // alert (row.id)

  $('#id_d').val(row.id);
  $('#state_d').val(2);
  $('#changeCompaigns').modal('show');},
  'click .reject': function (e, value, row, index) {
    // alert (row.id)

$('#id_d').val(row.id);
$('#state_d').val(0);
$('#changeCompaigns').modal('show');

}



}



      // $table.bootstrapTable('remove', {
      //   field: 'id',
      //   values: [row.id]


  function totalTextFormatter(data) {
    return 'Total'
  }

  function totalNameFormatter(data) {
    return data.length
  }

  function totalPriceFormatter(data) {
    var field = this.field
    return '$' + data.map(function (row) {
      return +row[field].substring(1)
    }).reduce(function (sum, i) {
      return sum + i
    }, 0)
  }

  function initTable(users) {
    $table.bootstrapTable('destroy').bootstrapTable({
      height: 550,
      locale: $('#locale').val(),
      pagination: true,
      search: true,
      columns: [
        [{
          field: 'state',
          checkbox: true,
          rowspan: 2,
          align: 'center',
          valign: 'middle'
        }, {
          title: ' ID',
          field: 'id',
          rowspan: 2,
          align: 'center',
          valign: 'middle',
          sortable: true,
          footerFormatter: totalTextFormatter
        }, {
          title: 'Compaigns Details',
          colspan: 5,
          align: 'center'
        }],
        [ {
          field: 'title',
          title: 'Compain Title',
          sortable: true,
          align: 'center',
          footerFormatter: totalPriceFormatter
        }, {
          field: 'tags',
          title: 'Tags',
          sortable: true,
          align: 'center',
          footerFormatter: totalPriceFormatter
        }
        ,{
          field: 'cost',
          title: 'Cost',
          sortable: true,
          align: 'center',
          footerFormatter: totalPriceFormatter
        }
        ,
        {
          field: 'duration',
          title: 'Duration',
          sortable: true,
          align: 'center',
          footerFormatter: totalPriceFormatter
        }
        , {
          field: 'operate',
          title: 'Item Action',
          align: 'center',
          clickToSelect: false,
          events: window.operateEvents,
          formatter: operateFormatter
        }]
      ],
      data:users

    })
  }
    $table.on('check.bs.table uncheck.bs.table ' +
      'check-all.bs.table uncheck-all.bs.table',
    function () {
      $remove.prop('disabled', !$table.bootstrapTable('getSelections').length)

      // save your data, here just save the current page
      selections = getIdSelections()
      // push or splice the selections if you want to save all data selections
    })
    $table.on('all.bs.table', function (e, name, args) {
      console.log(name, args)
    })
    $remove.click(function () {
      var ids = getIdSelections()
      $('#id_d').val( ids);
  $('#changeCompaigns').modal('show');


    })


  // $(function() {
  //   initTable()

  //   $('#locale').change(initTable)
  // })


$(document).ready(function(){
        load_data();
});


function load_data(){
      $.ajax({
          url:"/managecompaign",
          method:"POST",
    data:{type:"1"},
          success:function(data)
          {
      var userInfo=JSON.parse(data);
      // alert(d)
      initTable(userInfo.data);
      $('#locale').change(initTable)
    }


             });
}












// compaign delete 

/*
var $table = $('#table')
var $remove = $('#remove')
var selections = []

function getIdSelections() {
return $.map($table.bootstrapTable('getSelections'), function (row) {
return row.id
})
}

function responseHandler(res) {
$.each(res.rows, function (i, row) {
row.state = $.inArray(row.id, selections) !== -1
})
return res
}

function detailFormatter(index, row) {
var html = []
$.each(row, function (key, value) {
html.push('<p><b>' + key + ':</b> ' + value + '</p>')
})
return html.join('')
}

function operateFormatter(value, row, index) {
return [
'<a class="delete" href="javascript:void(0)" title="Delete">',
'<i class="fa fa-trash"></i>',
'</a>  ',
'<a class="reject" href="javascript:void(0)" title="Reject">',
'<i class="fa fa-times-circle "></i>',
'</a>'
].join('')
}


// delete fun
function deleteU(){
$.ajax({
url: "/managecompaign",
type: "POST",
cache: false,
data:{
  type:9,
  ids: $("#id_d").val(),
  state:$("#state_d").val(),

},
success: function(dataResult){
  var dataResult = JSON.parse(dataResult);
  if(dataResult.statusCode==200){
      $('#changeCompaigns').modal('hide');
      alert(dataResult.message)
      // sucMsg(dataResult.message);
      load_data()
  }
  else if(dataResult.statusCode==201){
     alert(dataResult);
  }
}
});
}



window.operateEvents = {
'click .liks': function (e, value, row, index) {
alert('You click like action, row: ' + JSON.stringify(row))
},
'click .delete': function (e, value, row, index) {
// alert (row.id)

$('#id_d').val(row.id);
$('#state_d').val(0);
$('#changeCompaigns').modal('show');},
'click .reject': function (e, value, row, index) {
// alert (row.id)

$('#id_d').val(row.id);
$('#state_d').val(1);
$('#changeCompaigns').modal('show');

}



}



// $table.bootstrapTable('remove', {
//   field: 'id',
//   values: [row.id]


function totalTextFormatter(data) {
return 'Total'
}

function totalNameFormatter(data) {
return data.length
}

function totalPriceFormatter(data) {
var field = this.field
return '$' + data.map(function (row) {
return +row[field].substring(1)
}).reduce(function (sum, i) {
return sum + i
}, 0)
}

function initTable(users) {
$table.bootstrapTable('destroy').bootstrapTable({
height: 550,
locale: $('#locale').val(),
pagination: true,
search: true,
columns: [
[{
  field: 'state',
  checkbox: true,
  rowspan: 2,
  align: 'center',
  valign: 'middle'
}, {
  title: ' ID',
  field: 'id',
  rowspan: 2,
  align: 'center',
  valign: 'middle',
  sortable: true,
  footerFormatter: totalTextFormatter
}, {
  title: 'Compaigns Details',
  colspan: 5,
  align: 'center'
}],
[ {
  field: 'title',
  title: 'Compain Title',
  sortable: true,
  align: 'center',
  footerFormatter: totalPriceFormatter
}, {
  field: 'tags',
  title: 'Tags',
  sortable: true,
  align: 'center',
  footerFormatter: totalPriceFormatter
}
,{
  field: 'cost',
  title: 'Cost',
  sortable: true,
  align: 'center',
  footerFormatter: totalPriceFormatter
}
,
{
  field: 'duration',
  title: 'Duration',
  sortable: true,
  align: 'center',
  footerFormatter: totalPriceFormatter
}
, {
  field: 'operate',
  title: 'Item Action',
  align: 'center',
  clickToSelect: false,
  events: window.operateEvents,
  formatter: operateFormatter
}]
],
data:users

})
}
$table.on('check.bs.table uncheck.bs.table ' +
'check-all.bs.table uncheck-all.bs.table',
function () {
$remove.prop('disabled', !$table.bootstrapTable('getSelections').length)

// save your data, here just save the current page
selections = getIdSelections()
// push or splice the selections if you want to save all data selections
})
$table.on('all.bs.table', function (e, name, args) {
console.log(name, args)
})
$remove.click(function () {
var ids = getIdSelections()
$('#id_d').val( ids);
$('#changeCompaigns').modal('show');


})


// $(function() {
//   initTable()

//   $('#locale').change(initTable)
// })


$(document).ready(function(){
load_data();
});


function load_data(){
$.ajax({
  url:"/managecompaign",
  method:"POST",
data:{type:"8"},
  success:function(data)
  {
var userInfo=JSON.parse(data);
// alert(d)
initTable(userInfo.data);
$('#locale').change(initTable)
}


     });
}


*/

















